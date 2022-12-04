import 'package:flutter_core/constant.dart';
import 'package:flutter_core/utils/failures/base_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_failures.freezed.dart';

@freezed
class LocalFailure with _$LocalFailure implements Exception, BaseFailure {
  const LocalFailure._();

  const factory LocalFailure.customFailure(String message) = CustomFailure;

  const factory LocalFailure.unknownError(dynamic error) = UnknownError;

  @override
  String get failureMessage => _message;
}

extension LocalFailureMessage on LocalFailure {
  String get _message => map(
        customFailure: (failure) => failure.message,
        unknownError: (_) => DefaultValues.SOMETHING_WENT_WRONG,
      );
}
