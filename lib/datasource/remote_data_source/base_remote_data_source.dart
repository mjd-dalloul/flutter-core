/// Created by Majd Dalloul 6/10/2022
import 'package:dio/dio.dart';
import 'package:flutter_core/constant.dart';
import 'package:flutter_core/datasource/remote_data_source/i_base_remote_data_source.dart';
import 'package:flutter_core/type_defs.dart';
import 'package:flutter_core/utils/data_model_wrapper.dart';
import 'package:flutter_core/utils/extensions/map_ext.dart';
import 'package:flutter_core/utils/failures/network_failures.dart';

/// this implementation is done by using dio as an http library
class BaseRemoteDataSource implements IBaseRemoteDataSource {
  const BaseRemoteDataSource(this.dio);

  final Dio dio;

  /// [useAuthenticationToken] if the interceptor should attach the access token to the request.
  /// [deserializer] T Function(Map<String, dynamic>) how to deserialize object.
  /// [params] attached to the request.
  /// [headers] custom headers.
  /// [hasBaseRequestModel] if every request should have some static data.
  /// [onSendProgress] & [onReceiveProgress] used by dio.
  Future<DataModelWrapper<T>> request<T>({
    required HttpRequestTypes requestType,
    required String endPoint,
    Map<String, dynamic>? params,
    Map<String, dynamic>? headers,
    Options? options,
    dynamic data,
    Deserializer<T?>? deserializer,
    MapDeserializer<T?>? mapDeserializer,
    bool useAuthenticationToken = true,
    bool hasBaseRequestModel = true,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      late final Response response;
      final option = options ??
          Options(
            headers: headers,
            extra: (<String, dynamic>{}
                .useAuthenticationToken(useAuthenticationToken)),
          );
      switch (HttpRequestTypes.values.byName(requestType.name)) {
        case HttpRequestTypes.GET:
          response = await get(
            endPoint: endPoint,
            params: params,
            headers: option,
            onReceiveProgress: onReceiveProgress,
          );
          break;
        case HttpRequestTypes.POST:
          response = await post(
            endPoint: endPoint,
            params: params,
            headers: option,
            data: hasBaseRequestModel ? wrapBodyWithBaseRequest(data) : data,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          );
          break;
        case HttpRequestTypes.DELETE:
          response = await delete(
            endPoint: endPoint,
            params: params,
            headers: option,
            data: data,
          );
          break;
        case HttpRequestTypes.PATCH:
          response = await patch(
            endPoint: endPoint,
            params: params,
            headers: option,
            data: hasBaseRequestModel ? wrapBodyWithBaseRequest(data) : data,
          );
          break;
        case HttpRequestTypes.PUT:
          response = await put(
            endPoint: endPoint,
            params: params,
            headers: option,
            data: hasBaseRequestModel ? wrapBodyWithBaseRequest(data) : data,
          );
          break;
      }

      /// if we are here then the status code of the request must be 200<=statusCode<=299
      return DataModelWrapper.networkData(
        data: deserializer?.call(response.data) ??
            mapDeserializer?.call(response.data),
      );
    } on NetworkFailure catch (e) {
      /// our failure we will handle it.
      return DataModelWrapper.networkDataFailure(networkFailure: e);
    } catch (e) {
      /// something went wrong.
      rethrow;
    }
  }

  ///dio delete
  @override
  Future<Response> delete({
    required String endPoint,
    data,
    Map<String, dynamic>? params,
    Options? headers,
  }) =>
      wrapRequestWithTryAndCatch(dio.delete(
        endPoint,
        data: data,
        queryParameters: params,
        options: headers,
      ));

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
        dio.put(
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
      } else if (responseIsOk(response)) {
        return response;
      } else {
        throw mapStatusCodeToFailure(response);
      }
    } on DioError catch (e) {
      throw mapDioErrorToFailure(e);
    } on NetworkFailure {
      rethrow;
    } catch (e) {
      /// if this happen then it's not a network error, then it must be a bug in the request
      throw NetworkFailure.customFailure(e.toString());
    }
  }

  bool responseIsOk(Response response) => response.statusCode! ~/ 100 == 2;

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
        return const NetworkFailure.noInternetFailure('Something went wrong');
      case DioErrorType.cancel:
        return const NetworkFailure.requestCancelled();
      case DioErrorType.response:
        return mapStatusCodeToFailure(error.response);
    }
  }

  ///default error message if [failureToString] returned null.
  String get defaultErrorMessage => 'something went wrong';

  ///extract error message from [response]
  String? failureToString(Response response) => response.statusMessage;

  dynamic failureParser(Response response) => null;

  /// we are only interesting in the unauthenticated failure, otherwise we are returning
  /// the message from response if it's exist or we will return "Something went wrong"
  NetworkFailure mapStatusCodeToFailure(Response<dynamic>? response) {
    if (response != null) {
      if (response.statusCode! == 401 || response.statusCode! == 400) {
        return NetworkFailure.unauthenticatedFailure(
          failureToString(response) ?? defaultErrorMessage,
          failureParser(response),
        );
      } else if (response.statusCode! ~/ 100 == 5) {
        return NetworkFailure.serverFailure(
          failureToString(response) ?? defaultErrorMessage,
          failureParser(response),
        );
      } else {
        return NetworkFailure.customFailure(
          failureToString(response) ?? defaultErrorMessage,
          failureParser(response),
        );
      }
    } else {
      return NetworkFailure.serverFailure(
        defaultErrorMessage,
      );
    }
  }

  ///this function need to override if you want to send the data as form data
  ///or add new field to the data before sending it
  @override
  dynamic wrapBodyWithBaseRequest(data) => data;
}
