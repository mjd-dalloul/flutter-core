import 'dart:io';

import 'package:dio/dio.dart';
import 'package:example/core/failure/failure.dart';
import 'package:flutter_core/datasource/remote_data_source/base_remote_data_source.dart';

class ExampleRemoteDataSource extends BaseRemoteDataSource {
  ExampleRemoteDataSource(super.dio, super.logger);

  /// extract the failure string from response
  @override
  String? failureToString(Response response) {
    return response.data['message'];
  }

  ///convert body sent in dio to string, for logging purposes
  @override
  String bodyToString(data) {
    if (data == null) {
      return 'null';
    } else if (data is FormData) {
      return data.fields.toString();
    } else {
      return data.toString();
    }
  }

  /// parse the failure to project failure.
  @override
  failureParser(Response response) {
    if (response.statusCode! == HttpStatus.forbidden ||
        response.statusCode! == HttpStatus.unauthorized) {
      return const Failure.customFailureWithMessage('Unauthenticated');
    } else if (response.statusCode! == HttpStatus.internalServerError) {
      return const Failure.serverFailure('Server failure');
    } else {
      return const Failure.unknownFailure();
    }
  }

  ///wrap your data with BaseRequest
  @override
  dynamic wrapBodyWithBaseRequest(data) {
    return super.wrapBodyWithBaseRequest(data);
  }
}
