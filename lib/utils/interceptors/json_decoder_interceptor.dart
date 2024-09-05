import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert';

Future<dynamic> decodeJson(String? jsonString) {
  return jsonString == null ? null : jsonDecode(jsonString);
}

class JsonDecoderInterceptor extends Interceptor {
  @override
  void onResponse(Response<dynamic> response, ResponseInterceptorHandler handler) async {
    final decodedData = await compute(
      decodeJson,
      response.data != null ? response.data as String : null,
    );

    handler.next(
      Response(
        data: decodedData,
        headers: response.headers,
        requestOptions: response.requestOptions,
        isRedirect: response.isRedirect,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        redirects: response.redirects,
        extra: response.extra,
      ),
    );
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    final decodedErrorData = await compute(
      decodeJson,
      err.response?.data != null ? err.response!.data as String : null,
    );

    handler.next(
      DioError(
        response: Response(
          data: decodedErrorData,
          headers: err.response?.headers,
          requestOptions: err.requestOptions,
          isRedirect: err.response?.isRedirect,
          statusCode: err.response?.statusCode,
          statusMessage: err.response?.statusMessage,
          redirects: err.response?.redirects,
          extra: err.response?.extra,
        ),
        error: err.error,
        type: err.type,
        requestOptions: err.requestOptions,
      ),
    );
  }
}
