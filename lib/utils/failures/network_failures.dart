import 'package:flutter_core/constant.dart';
import 'package:flutter_core/utils/failures/base_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_failures.freezed.dart';

@freezed
sealed class NetworkFailure with _$NetworkFailure implements Exception, BaseFailure {
  const NetworkFailure._();

  const factory NetworkFailure.serverFailure(
      [String? message, dynamic failure]) = ServerFailure;

  const factory NetworkFailure.requestCancelled(
      [String? message, dynamic failure]) = RequestCancelled;

  const factory NetworkFailure.customFailure(String message,
      [dynamic failure]) = CustomFailure;

  const factory NetworkFailure.noInternetFailure(
      [String? message, dynamic failure]) = NoInternetFailure;

  const factory NetworkFailure.unauthenticatedFailure(
      [String? message, dynamic failure]) = UnauthenticatedFailure;

  const factory NetworkFailure.unknownError(dynamic error, [dynamic failure]) = UnknownError;

  @override
  String get failureMessage => _message;

  @override
  get appFailure => _customFailure;
}

extension NetworkFailureMessage on NetworkFailure {
  String get _message {
    return switch (this) {
      ServerFailure(message: final message) => message ?? DefaultValues.SERVER_FAILURE,
      CustomFailure(
        message: final message,
      ) =>
        message,
      NoInternetFailure(message: final message) => message ?? DefaultValues.NO_INTERNET_CONNECTION,
      UnauthenticatedFailure(message: final message) => message ?? DefaultValues.UNAUTHENTICATED,
      RequestCancelled(message: final message) => message ?? DefaultValues.REQUEST_CANCELLED,
      UnknownError() => DefaultValues.SOMETHING_WENT_WRONG,
    };
  }

  dynamic get _customFailure {
    return switch (this) {
      ServerFailure(failure: final failure) => failure,
      RequestCancelled(failure: final failure) => failure,
      CustomFailure(failure: final failure) => failure,
      NoInternetFailure(failure: final failure) => failure,
      UnauthenticatedFailure(failure: final failure) => failure,
      UnknownError(failure: final failure) => failure,
    };
  }
}