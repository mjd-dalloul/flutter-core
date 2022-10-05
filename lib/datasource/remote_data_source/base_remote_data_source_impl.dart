/// Created by Majd Dalloul 6/10/2022
import 'package:dio/dio.dart';
import 'package:flutter_core/constant.dart';
import 'package:flutter_core/datasource/remote_data_source/base_remote_data_source.dart';
import 'package:flutter_core/type_defs.dart';
import 'package:flutter_core/utils/network_failures.dart';
import 'package:flutter_core/utils/remote_data.dart';

/// this implementation is done by using dio as an http library
class BaseRemoteDataSourceImpl implements BaseRemoteDataSource {
  const BaseRemoteDataSourceImpl(this.dio);

  final Dio dio;

  /// [useAuthenticationToken] if the interceptor should attach the access token to the request.
  /// [hasBaseRequestModel] if every request should have some static data.
  /// [onSendProgress] & [onReceiveProgress] used by dio.
  Future<NetworkResponse<T>> request<T>({
    required HttpRequestTypes requestType,
    required String endPoint,
    Map<String, dynamic>? params,
    Map<String, dynamic>? headers,
    dynamic data,
    Deserializer<T?>? deserializer,
    bool useAuthenticationToken = true,
    bool hasBaseRequestModel = true,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      late final Response response;
      switch (HttpRequestTypes.values.byName(requestType.name)) {
        case HttpRequestTypes.GET:
          response = await get(
            endPoint: endPoint,
            params: params,
            headers: Options(headers: headers),
            onReceiveProgress: onSendProgress,
          );
          break;
        case HttpRequestTypes.POST:
          response = await post(
            endPoint: endPoint,
            params: params,
            headers: Options(headers: headers),
            data: hasBaseRequestModel ? wrapBodyWithBaseRequest(data) : data,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          );
          break;
        case HttpRequestTypes.DELETE:
          response = await delete(
            endPoint: endPoint,
            params: params,
            headers: Options(headers: headers),
          );
          break;
        case HttpRequestTypes.PATCH:
          response = await patch(
            endPoint: endPoint,
            params: params,
            headers: Options(headers: headers),
            data: hasBaseRequestModel ? wrapBodyWithBaseRequest(data) : data,
          );
          break;
        case HttpRequestTypes.PUT:
          response = await put(
            endPoint: endPoint,
            params: params,
            headers: Options(headers: headers),
            data: hasBaseRequestModel ? wrapBodyWithBaseRequest(data) : data,
          );
          break;
      }

      /// if we are here then the status code of the request must be 200<=statusCode<=299
      return deserializer == null
          ? const SuccessNetworkResponse(null)
          : SuccessNetworkResponse(deserializer.call(response.data));
    } on NetworkFailure catch (e) {
      /// our failure we will handle it.
      return FailureNetworkResponse(e);
    } catch (e) {
      /// something went wrong.
      rethrow;
    }
  }

  ///dio delete
  @override
  Future<Response> delete({
    required String endPoint,
    Map<String, dynamic>? params,
    Options? headers,
  }) =>
      dio.delete(
        endPoint,
        queryParameters: params,
        options: headers,
      );

  ///dio get
  @override
  Future<Response> get({
    required String endPoint,
    Map<String, dynamic>? params,
    Options? headers,
    void Function(int, int)? onReceiveProgress,
  }) =>
      wrapRequestWithTryAndCatch(
        dio.get(
          endPoint,
          queryParameters: params,
          options: headers,
          onReceiveProgress: onReceiveProgress,
        ),
      );

  ///dio post
  @override
  Future<Response> post({
    required String endPoint,
    data,
    Map<String, dynamic>? params,
    Options? headers,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) =>
      wrapRequestWithTryAndCatch(
        dio.post(
          endPoint,
          data: data,
          queryParameters: params,
          options: headers,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress,
        ),
      );

  ///dio put
  @override
  Future<Response> put({
    required String endPoint,
    data,
    Map<String, dynamic>? params,
    Options? headers,
  }) =>
      wrapRequestWithTryAndCatch(
        dio.post(
          endPoint,
          data: data,
          queryParameters: params,
          options: headers,
        ),
      );

  ///dio patch
  @override
  Future<Response> patch({
    required String endPoint,
    Map<String, dynamic>? params,
    Options? headers,
    data,
  }) =>
      wrapRequestWithTryAndCatch(
        dio.patch(
          endPoint,
          data: data,
          options: headers,
          queryParameters: params,
        ),
      );

  /// any post, get, put, patch request will be inside try, catch block to catch any kind of error
  Future<Response> wrapRequestWithTryAndCatch(Future<Response> request) async {
    try {
      final response = await request;
      if (response.statusCode == null) {
        throw const NetworkFailure.serverFailure('Something went wrong');

        /// 200 <= statusCode <= 299
      } else if (response.statusCode! / 100 == 2) {
        return response;
      } else {
        throw mapStatusCodeToFailure(response);
      }
    } on DioError catch (e) {
      throw mapDioErrorToFailure(e);
    } catch (e) {
      /// if this happen then it's not a network error, then it must be a bug in the request
      throw NetworkFailure.customFailure(e.toString());
    }
  }

  /// mapping dio errors to proper failure
  NetworkFailure mapDioErrorToFailure(DioError error) {
    switch (error.type) {
      case DioErrorType.connectTimeout:
        return const NetworkFailure.noInternetFailure('Connection timeout');
      case DioErrorType.sendTimeout:
        return const NetworkFailure.noInternetFailure('Send timeout');
      case DioErrorType.receiveTimeout:
        return const NetworkFailure.noInternetFailure('Receive timeout');
      case DioErrorType.other:
        return const NetworkFailure.noInternetFailure();
      case DioErrorType.cancel:
        return const NetworkFailure.requestCancelled();
      case DioErrorType.response:
        return mapStatusCodeToFailure(error.response);
    }
  }

  /// todo(Majd) make it more dynamic
  /// todo(Majd) make the default message customizable
  /// we are only interesting in the unauthenticated failure, otherwise we are returning
  /// the message from response if it's exist or we will return "Something went wrong"
  NetworkFailure mapStatusCodeToFailure(Response<dynamic>? response) {
    if (response != null) {
      if (response.statusCode! == 401 || response.statusCode! == 400) {
        return NetworkFailure.unauthenticatedFailure(response.data['message']);
      } else {
        return NetworkFailure.customFailure(
          response.data['message'] ?? 'Something went wrong',
        );
      }
    } else {
      return const NetworkFailure.serverFailure();
    }
  }

  ///this function need to override if you want to send the data as form data or add new field to the data before sending it
  @override
  Map<String, dynamic> wrapBodyWithBaseRequest(data) =>
      data as Map<String, dynamic>;
}
