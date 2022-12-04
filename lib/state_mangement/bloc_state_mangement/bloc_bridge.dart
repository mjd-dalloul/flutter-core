import 'package:flutter/material.dart';
import 'package:flutter_core/state_mangement/bloc_state_mangement/base_bloc/base_bloc.dart';
import 'package:flutter_core/type_defs.dart';
import 'package:flutter_core/utils/data_model_wrapper.dart';
import 'package:flutter_core/utils/failures/base_failure.dart';
import 'package:flutter_core/utils/failures/network_failures.dart';

mixin BlocBridge {
  final BaseBloc _baseBloc = BaseBloc();

  BaseFailure? _failure;

  BaseBloc get baseBloc => _baseBloc;

  Future<DataModelWrapper<T>> apiCallWrapper<T>({
    required Future<DataModelWrapper<T>> Function() apiCall,
    required bool useBaseBlocLoader,
    required bool showUIErrorMessage,
    void Function(DataModelWrapper<T> result)? onSuccess,
    void Function(BaseFailure failure)? onFailure,
    void Function(dynamic e)? unknownError,
  }) =>
      _errorHandlingWrapper(
        apiCall: apiCall,
        onSuccess: onSuccess,
        useBaseBlocLoader: useBaseBlocLoader,
        showUIErrorMessage: showUIErrorMessage,
        onFailure: onFailure,
        unknownError: unknownError,
      );

  Future<DataModelWrapper<T>> _errorHandlingWrapper<T>({
    required Future<DataModelWrapper<T>> Function() apiCall,
    required bool useBaseBlocLoader,
    required bool showUIErrorMessage,
    void Function(DataModelWrapper<T> result)? onSuccess,
    void Function(BaseFailure failure)? onFailure,
    void Function(dynamic e)? unknownError,
  }) async {
    try {
      if (useBaseBlocLoader) {
        _isLoadingChanged(true);
      }
      final res = await apiCall();
      if (res.isFailure) {
        _failure = res.failure;
        if (showUIErrorMessage) {
          _handleApiError(_failure!);
        }
        onFailure?.call(_failure!);
      }
      if (useBaseBlocLoader) {
        _isLoadingChanged(false);
      }
      if (res.isSuccess) {
        onSuccess?.call(res);
      }
      return res;
    } catch (e) {
      if (useBaseBlocLoader) {
        _isLoadingChanged(false);
      }
      unknownError?.call(e);
      return DataModelWrapper.networkDataFailure(
          networkFailure: NetworkFailure.unknownError(e));
    }
  }

  void runFunctionWithContext(ContextCallback contextCallback) =>
      _baseBloc.add(BaseBlocEvent.contextCallbackTriggered(contextCallback));

  void _isLoadingChanged(bool isLoading) =>
      _baseBloc.add(BaseBlocEvent.loadingChanged(isLoading));

  /// todo add option to customize default error handler
  void _handleApiError(BaseFailure failure) => _baseBloc.add(
        BaseBlocEvent.contextCallbackTriggered(
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
