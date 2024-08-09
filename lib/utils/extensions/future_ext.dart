import 'dart:async';

import 'package:flutter_core/utils/data_model_wrapper.dart';

extension FutureExtension<T> on Future<DataModelWrapper<T>> {
  Future<R> whenSuccess<R>(FutureOr<R> Function(T res) onSuccess) {
    return then((res) => res.data!).then((res) => onSuccess(res));
  }
}
