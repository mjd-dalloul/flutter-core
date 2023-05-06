import 'package:flutter_core/utils/failures/base_failure.dart';
import 'package:flutter_core/utils/failures/local_failures.dart';
import 'package:flutter_core/utils/failures/network_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.serverFailure([String? message]) = ServerFailure;

  const factory Failure.customFailureWithMessage(String message) =
      CustomFailureWithMessage;

  const factory Failure.unknownFailure() = UnknownFailure;
}

extension FailureExt on Failure {
  NetworkFailure toNetworkFailure() => map(
        serverFailure: (failure) =>
            NetworkFailure.serverFailure(failure.message, failure),
        customFailureWithMessage: (failure) =>
            NetworkFailure.customFailure(failure.message, failure),
        unknownFailure: (failure) => NetworkFailure.unknownError(failure),
      );

  LocalFailure toLocalFailure() => maybeMap(
        customFailureWithMessage: (failure) =>
            LocalFailure.customFailure(failure.message),
        unknownFailure: (failure) => LocalFailure.unknownError(failure),
        orElse: () => const LocalFailure.unknownError('SOMETHING WENT WRONG'),
      );
}

extension BaseFailureExt on BaseFailure {
  Failure? get exampleFailure {
    return appFailure as Failure?;
  }

  bool get hasExampleFailure {
    return (appFailure as Failure?) != null;
  }
}
