import 'dart:convert';

import 'package:dio/dio.dart';

/// interceptor to decode json
class JsonDecoderInterceptor extends Interceptor {
  @override
  void onResponse(
      Response<dynamic> response, ResponseInterceptorHandler handler) {
    handler.next(
      Response(
        data: response.data != null ? jsonDecode(response.data) : null,
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
  void onError(DioError err, ErrorInterceptorHandler handler) {
    handler.next(
      DioError(
          response: Response(
            data: err.response?.data != null
                ? jsonDecode(err.response!.data)
                : null,
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
          requestOptions: err.requestOptions),
    );
  }
}
