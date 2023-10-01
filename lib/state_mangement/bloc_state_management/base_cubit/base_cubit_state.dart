import 'package:flutter_core/type_defs.dart';
import 'package:flutter_core/utils/failures/base_failure.dart';

abstract class BaseCubitState {
  bool getIsLoading();

  ContextCallback? getContextCallback();

  BaseCubitState isLoadingChanged(bool isLoading);

  BaseCubitState contextCallbackChanged(ContextCallback? contextCallback);

  BaseFailure? getFailure();

  BaseCubitState failureChanged(BaseFailure? failure);

  Object? getUnknownError();

  BaseCubitState unknownErrorChanged(Object? unknownError);
}
