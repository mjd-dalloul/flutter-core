import 'package:dio/dio.dart';
import 'package:flutter_core/datasource/shared_preferences_data_source/base_shared_preferences.dart';
import 'package:flutter_core/utils/token_constants.dart';

/// interceptor to add bearer token to the request.
class TokenInterceptor extends Interceptor {
  TokenInterceptor(this.sharedPreferencesImpl);

  final BaseSharedPreferences sharedPreferencesImpl;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final attachAuthenticationToken =
        options.extra[TokenConstants.ATTACH_AUTHENTICATION];
    if (attachAuthenticationToken != null &&
        attachAuthenticationToken == true) {
      options.headers['authentication'] =
          'Bearer ${sharedPreferencesImpl.getAccessToken()}';
    }
    handler.next(options);
  }
}
