import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core/state_mangement/bloc_state_management/helper_bloc/helper_bloc.dart';
import 'package:flutter_core/type_defs.dart';
import 'package:flutter_core/utils/data_model_wrapper.dart';
import 'package:flutter_core/utils/failures/base_failure.dart';
import 'package:flutter_core/utils/failures/network_failures.dart';
import 'package:logger/logger.dart';

/// BaseBloc
/// every bloc should extend this bloc, will add helper function to fast the development process.
class BaseBloc<E, S> extends Bloc<E, S> {
  BaseBloc(super.initialState, this.logger) {
    helperBloc = HelperBloc();
  }

  final Logger logger;

  late final HelperBloc helperBloc;
  BaseFailure? _failure;

  @Deprecated('use futureWrapper instead')
  Future<void> futureWrapper2<T>({
    required AsyncValueGetter<T?> futureCall,
    required bool Function(T?) validateFuture,
    bool useBaseBlocLoader = false,
    FutureOr<void> Function(bool)? loadingChanged,
    FutureOr<void> Function(T?)? onSuccess,
    FutureOr<void> Function()? beforeFutureStarted,
    FutureOr<void> Function(T?)? onFailure,
    FutureOr<void> Function(dynamic)? unknownError,
  }) async {
    try {
      if (useBaseBlocLoader) {
        _isLoadingChanged(true);
      }
      await loadingChanged?.call(true);
      await beforeFutureStarted?.call();
      final res = await futureCall();
      await loadingChanged?.call(false);
      if (useBaseBlocLoader) {
        _isLoadingChanged(false);
      }
      if (validateFuture.call(res)) {
        await onSuccess?.call(res);
      } else {
        await onFailure?.call(res);
      }
    } catch (e, st) {
      logger.e('Error in FutureWrapper2', e, st);
      await unknownError?.call(e);
    }
  }

  /// [useBaseBlocLoader] will trigger [HelperBloc] loading.
  /// [showUIErrorMessage] show error on screen if the [futureCall] failed
  /// [loadingChanged] will triggered before [futureCall] with [isFinished = false]
  /// and when [futureCall] is finished or failed with [isFinished = true]
  /// [onSuccess] will triggered if the [futureCall] done with success result
  /// [onFailure] will triggered if the [futureCall] done with failure result
  Future<DataModelWrapper<T>> futureWrapper<T>({
    required AsyncValueGetter<DataModelWrapper<T>> futureCall,
    bool useBaseBlocLoader = false,
    bool showUIErrorMessage = true,
    bool onFailureDefaultHandler = false,
    bool onUnknownErrorDefaultHandler = false,
    FutureOr<void> Function(bool)? loadingChanged,
    FutureOr<void> Function(T?)? onSuccess,
    FutureOr<void> Function()? beforeFutureStarted,
    FutureOr<void> Function(BaseFailure)? onFailure,
    FutureOr<void> Function(dynamic)? unknownError,
  }) async =>
      _errorHandlingWrapper(
        futureCall: futureCall,
        onSuccess: onSuccess,
        beforeFutureStarted: beforeFutureStarted,
        loadingChanged: loadingChanged,
        useBaseBlocLoader: useBaseBlocLoader,
        showUIErrorMessage: showUIErrorMessage,
        onFailureDefaultHandler: onFailureDefaultHandler,
        onUnknownErrorDefaultHandler: onUnknownErrorDefaultHandler,
        onFailure: onFailure,
        unknownError: unknownError,
      );

  Future<DataModelWrapper<T>> _errorHandlingWrapper<T>({
    required AsyncValueGetter<DataModelWrapper<T>> futureCall,
    required bool useBaseBlocLoader,
    required bool showUIErrorMessage,
    required bool onFailureDefaultHandler,
    required bool onUnknownErrorDefaultHandler,
    FutureOr<void> Function(bool)? loadingChanged,
    FutureOr<void> Function(T?)? onSuccess,
    FutureOr<void> Function()? beforeFutureStarted,
    FutureOr<void> Function(BaseFailure)? onFailure,
    FutureOr<void> Function(dynamic)? unknownError,
  }) async {
    try {
      helperBloc.add(const HelperBlocEvent.failureCleared());
      if (useBaseBlocLoader) {
        _isLoadingChanged(true);
      }
      await loadingChanged?.call(true);
      await beforeFutureStarted?.call();
      final res = await futureCall();
      await loadingChanged?.call(false);
      if (useBaseBlocLoader) {
        _isLoadingChanged(false);
      }
      if (res.isFailure) {
        _failure = res.failure;
        if (showUIErrorMessage) {
          _handleApiError(_failure!);
        }
        await onFailure?.call(_failure!);
        if (onFailureDefaultHandler) {
          helperBloc.add(HelperBlocEvent.failureHappened(_failure!));
        }
      }
      if (res.isSuccess) {
        T? data = res.data;
        await onSuccess?.call(data);
      }
      return res;
    } catch (e, st) {
      logger.e('Error in FutureWrapper', e, st);
      await loadingChanged?.call(false);
      if (useBaseBlocLoader) {
        _isLoadingChanged(false);
      }
      await unknownError?.call(e);
      if (onUnknownErrorDefaultHandler) {
        helperBloc.add(HelperBlocEvent.unknownErrorHappened(e));
      }
      return DataModelWrapper.networkDataFailure(
          networkFailure: NetworkFailure.unknownError(e));
    }
  }

  /// call this function when you need access to [BuildContext] inside your bloc.
  void runFunctionWithContext(ContextCallback contextCallback) =>
      helperBloc.add(HelperBlocEvent.contextCallbackTriggered(contextCallback));

  void _isLoadingChanged(bool isLoading) =>
      helperBloc.add(HelperBlocEvent.loadingChanged(isLoading));

  void _handleApiError(BaseFailure failure) => helperBloc.add(
    HelperBlocEvent.contextCallbackTriggered(
          (context) {
        errorHandler(failure, context);
      },
    ),
  );

  void errorHandler(BaseFailure failure, BuildContext context) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(failure.failureMessage),
        ),
      );
}
