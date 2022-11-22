import 'package:flutter/material.dart';
import 'package:flutter_core/state_mangement/bloc_state_mangement/base_bloc/base_bloc.dart';
import 'package:flutter_core/type_defs.dart';
import 'package:flutter_core/utils/network_failures.dart';
import 'package:flutter_core/utils/remote_data.dart';

mixin BlocBridge {
  final BaseBloc _baseBloc = BaseBloc();

  NetworkFailure? _networkFailure;

  BaseBloc get baseBloc => _baseBloc;

  Future<NetworkResponse<T>> apiCallWrapper<T>({
    required Future<NetworkResponse<T>> Function() apiCall,
    required bool useBaseBlocLoader,
    required bool showUIErrorMessage,
    void Function(NetworkResponse<T> result)? onSuccess,
    void Function(NetworkFailure networkFailure)? onFailure,
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

  Future<NetworkResponse<T>> _errorHandlingWrapper<T>({
    required Future<NetworkResponse<T>> Function() apiCall,
    required bool useBaseBlocLoader,
    required bool showUIErrorMessage,
    void Function(NetworkResponse<T> result)? onSuccess,
    void Function(NetworkFailure networkFailure)? onFailure,
    void Function(dynamic e)? unknownError,
  }) async {
    try {
      if (useBaseBlocLoader) {
        _isLoadingChanged(true);
      }
      final res = await apiCall();
      if (res.isFailure) {
        _networkFailure = res.failure;
        if (showUIErrorMessage) {
          _handleApiError(_networkFailure!);
        }
        onFailure?.call(_networkFailure!);
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
      return FailureNetworkResponse(NetworkFailure.unknownError(e));
    }
  }

  void runFunctionWithContext(ContextCallback contextCallback) =>
      _baseBloc.add(BaseBlocEvent.contextCallbackTriggered(contextCallback));

  void _isLoadingChanged(bool isLoading) =>
      _baseBloc.add(BaseBlocEvent.loadingChanged(isLoading));

  /// todo add option to customize default error handler
  void _handleApiError(NetworkFailure failure) => _baseBloc.add(
        BaseBlocEvent.contextCallbackTriggered(
          (context) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(failure.message),
              ),
            );
          },
        ),
      );
}
