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
}
