import 'package:flutter_core/constant.dart';
import 'package:flutter_core/utils/failures/base_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_failures.freezed.dart';

@freezed
sealed class LocalFailure with _$LocalFailure implements Exception, BaseFailure {
  const LocalFailure._();

  const factory LocalFailure.customFailure(String message, [dynamic failure]) = CustomFailure;

  const factory LocalFailure.unknownError(dynamic error, [dynamic failure]) = UnknownError;

  @override
  String get failureMessage => _message;

  @override
  dynamic get appFailure => _customFailure;
}

extension LocalFailureMessage on LocalFailure {
  String get _message {
    return switch (this) {
      CustomFailure(message: final message) => message,
      UnknownError() => DefaultValues.SOMETHING_WENT_WRONG,
    };
  }

  dynamic get _customFailure {
    return switch (this) {
      CustomFailure(failure: final failure) => failure,
      UnknownError(failure: final failure) => failure,
    };
  }
}