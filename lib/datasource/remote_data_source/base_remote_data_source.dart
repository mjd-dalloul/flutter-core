import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<Response> get({
    required String endPoint,
    Map<String, dynamic>? params,
    Options? headers,
    void Function(int, int)? onReceiveProgress,
  });

  Future<Response> post({
    required String endPoint,
    dynamic data,
    Map<String, dynamic>? params,
    Options? headers,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  });

  Future<Response> put({
    required String endPoint,
    dynamic data,
    Map<String, dynamic>? params,
    Options? headers,
  });

  Future<Response> delete({
    required String endPoint,
    Map<String, dynamic>? params,
    Options? headers,
  });

  Future<Response> patch({
    required String endPoint,
    Map<String, dynamic>? params,
    Options? headers,
    dynamic data,
  });

  Map<String, dynamic> wrapBodyWithBaseRequest(dynamic data);
}
