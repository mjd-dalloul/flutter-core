import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core/state_mangement/bloc_state_management/helper_bloc/helper_bloc.dart';
import 'package:flutter_core/type_defs.dart';
import 'package:flutter_core/utils/data_model_wrapper.dart';
import 'package:flutter_core/utils/failures/base_failure.dart';
import 'package:flutter_core/utils/failures/network_failures.dart';

/// BaseBloc
/// every bloc should extend this bloc, will add helper function to fast the development process.
class BaseBloc<E, S> extends Bloc<E, S> {
  BaseBloc(super.initialState) {
    helperBloc = HelperBloc();
  }

  late final HelperBloc helperBloc;
  BaseFailure? _failure;

  /// [useBaseBlocLoader] will trigger [HelperBloc] loading.
  /// [showUIErrorMessage] show error on screen if the [futureCall] failed
  /// [loadingChanged] will triggered before [futureCall] with [isFinished = false]
  /// and when [futureCall] is finished or failed with [isFinished = true]
  /// [onSuccess] will triggered if the [futureCall] done with success result
  /// [onFailure] will triggered if the [futureCall] done with failure result
  Future<DataModelWrapper<T>> futureWrapper<T>({
    required Future<DataModelWrapper<T>> Function() futureCall,
    bool useBaseBlocLoader = false,
    bool showUIErrorMessage = true,
    void Function(bool isFinished)? loadingChanged,
    void Function(DataModelWrapper<T> result)? onSuccess,
    void Function(BaseFailure failure)? onFailure,
    void Function(dynamic e)? unknownError,
  }) =>
      _errorHandlingWrapper(
        futureCall: futureCall,
        onSuccess: onSuccess,
        loadingChanged: loadingChanged,
        useBaseBlocLoader: useBaseBlocLoader,
        showUIErrorMessage: showUIErrorMessage,
        onFailure: onFailure,
        unknownError: unknownError,
      );

  Future<DataModelWrapper<T>> _errorHandlingWrapper<T>({
    required Future<DataModelWrapper<T>> Function() futureCall,
    required bool useBaseBlocLoader,
    required bool showUIErrorMessage,
    void Function(bool isFinished)? loadingChanged,
    void Function(DataModelWrapper<T> result)? onSuccess,
    void Function(BaseFailure failure)? onFailure,
    void Function(dynamic e)? unknownError,
  }) async {
    try {
      helperBloc.add(const HelperBlocEvent.failureCleared());
      if (useBaseBlocLoader) {
        _isLoadingChanged(true);
      }
      loadingChanged?.call(false);
      final res = await futureCall();
      loadingChanged?.call(true);
      if (useBaseBlocLoader) {
        _isLoadingChanged(false);
      }
      if (res.isFailure) {
        _failure = res.failure;
        if (showUIErrorMessage) {
          _handleApiError(_failure!);
        }
        onFailure?.call(_failure!);
        helperBloc.add(HelperBlocEvent.failureHappened(_failure!));
      }
      if (res.isSuccess) {
        onSuccess?.call(res);
      }
      return res;
    } catch (e) {
      loadingChanged?.call(true);
      if (useBaseBlocLoader) {
        _isLoadingChanged(false);
      }
      helperBloc.add(HelperBlocEvent.unknownErrorHappened(e));
      unknownError?.call(e);
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
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(failure.failureMessage),
              ),
            );
          },
        ),
      );
}
