import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_core/constant.dart';
import 'package:flutter_core/type_defs.dart';
import 'package:flutter_core/utils/data_model_wrapper.dart';
import 'package:flutter_core/utils/extensions/build_context_ext.dart';
import 'package:flutter_core/utils/failures/base_failure.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:logger/logger.dart';
import 'package:mobx/mobx.dart';

part 'base_viewmodel.g.dart';

abstract class BaseViewmodel extends _BaseViewmodelBase with _$BaseViewmodel {
  BaseViewmodel(Logger logger) : super(logger);
}

abstract class _BaseViewmodelBase with Store {
  _BaseViewmodelBase(this.logger);

  @protected
  final Logger logger;

  @observable
  bool isLoading = false;

  @observable
  ContextCallback? contextCallback;

  @action
  void getContext(ContextCallback callback) {
    contextCallback = callback;
  }

  @action
  void startLoading() {
    isLoading = true;
  }

  @action
  void stopLoading() {
    isLoading = false;
  }

  void unknownErrorHandler() {
    getContext((context) {
      Fluttertoast.showToast(
        msg: context.translate('msg_something_wrong'),
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        fontSize: 16.0,
      );
    });
  }

  @protected
  ObservableFuture<T> futureWrapper<T>(
    Future<DataModelWrapper<T>> Function() block, {
    void Function(BaseFailure)? onFailure,
    void Function(dynamic)? unknownError,
    bool useLoader = false,
  }) {
    if (useLoader) {
      startLoading();
    }
    return ObservableFuture(_wrapError<T>(
      block(),
      onFailure: onFailure,
      unknownError: unknownError,
    ).whenComplete(() {
      if (useLoader) {
        stopLoading();
      }
    }));
  }

  Future<T> _wrapError<T>(
    Future<DataModelWrapper<T>> future, {
    void Function(BaseFailure)? onFailure,
    void Function(dynamic)? unknownError,
  }) {
    return future.then((value) {
      if (value.isFailure) {
        throw (value.failure!);
      } else {
        return value.data!;
      }
    }).catchError((error) {
      if (error is BaseFailure) {
        onFailure?.call(error);
        errorHandler(error);
      } else {
        unknownError?.call(error);
        unknownErrorHandler();
      }
      logger.e(ErrorLogType.baseViewModelError, error);
      throw error;
    });
  }

  void errorHandler(BaseFailure failure) {
    getContext((context) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(failure.failureMessage),
        ),
      );
    });
  }

  Future<void> dispose() {
    return Future.value();
  }

  @action
  void toggleLoading() => isLoading = !isLoading;
}
