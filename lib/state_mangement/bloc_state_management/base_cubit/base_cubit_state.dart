import 'package:flutter_core/type_defs.dart';
import 'package:flutter_core/utils/failures/base_failure.dart';

abstract class BaseCubitState {
  bool get isLoading;

  ContextCallback get contextCallback;

  set isLoading(bool isLoading);

  set contextCallback(ContextCallback contextCallback);

  BaseFailure? get failure;

  set failure(BaseFailure? failure);

  Object? get unknownError;

  set unknownError(Object? unknownError);
}
