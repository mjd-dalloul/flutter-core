import 'package:flutter_core/constant.dart';
import 'package:flutter_core/utils/failures/base_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_failures.freezed.dart';

@freezed
class NetworkFailure with _$NetworkFailure implements Exception, BaseFailure {
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

  const factory NetworkFailure.unknownError(dynamic error, [dynamic failure]) =
      UnknownError;

  @override
  String get failureMessage => _message;

  @override
  get appFailure => _customFailure;
}

extension NetworkFailureMessage on NetworkFailure {
  String get _message => map(
        serverFailure: (failure) =>
            failure.message ?? DefaultValues.SERVER_FAILURE,
        customFailure: (failure) => failure.message,
        noInternetFailure: (failure) =>
            failure.message ?? DefaultValues.NO_INTERNET_CONNECTION,
        unauthenticatedFailure: (failure) =>
            failure.message ?? DefaultValues.UNAUTHENTICATED,
        requestCancelled: (failure) =>
            failure.message ?? DefaultValues.REQUEST_CANCELLED,
        unknownError: (_) => DefaultValues.SOMETHING_WENT_WRONG,
      );

  dynamic get _customFailure => map(
        serverFailure: (failure) => failure.failure,
        requestCancelled: (failure) => failure.failure,
        customFailure: (failure) => failure.failure,
        noInternetFailure: (failure) => failure.failure,
        unauthenticatedFailure: (failure) => failure.failure,
        unknownError: (failure) => failure.failure,
      );
}
