import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_core/utils/data_model_wrapper.dart';
import 'package:flutter_core/utils/failures/base_failure.dart';
import 'package:flutter_core/utils/failures/network_failures.dart';
import 'package:logger/logger.dart';

abstract class BaseRepository {
  const BaseRepository(this.logger);

  final Logger logger;

  /// request wrapper
  /// [remoteCall] function call to remote datasource
  /// [saveRemoteDataFunction] callback after the remoteCall finished, will be called with network result
  /// [forceUpdate] if we should try to get the result from local datasource
  /// [localCall] where to get the data if it from local database
  /// [onCacheSuccess] callback when cache happened successfully
  /// [onCacheFailure] callback when cache failed
  Future<DataModelWrapper<T>> requestData<T>({
    required Future<DataModelWrapper<T>> Function() remoteCall,
    FutureOr<void> Function(DataModelWrapper<T> remoteRes)? onRemoteSuccess,
    FutureOr<void> Function(NetworkFailure networkFailure)? onRemoteFailure,
    Future<DataModelWrapper<int>> Function(T data)? saveRemoteDataFunction,
    bool forceUpdate = true,
    bool checkForConnectivity = true,
    Future<DataModelWrapper<T>> Function()? localCall,
    void Function(int insertedRow)? onCacheSuccess,
    void Function(BaseFailure failure)? onCacheFailure,
  }) async {
    DataModelWrapper<T>? ret;
    final connectivityResult = checkForConnectivity
        ? await (Connectivity().checkConnectivity())
        : null;
    forceUpdate |= (connectivityResult != ConnectivityResult.none);
    if (forceUpdate) {
      logger.d('Requesting to remote datasource $remoteCall');
      ret = await _getFromRemoteDataSource(
        remoteCall: remoteCall,
        saveRemoteDataFunction: saveRemoteDataFunction,
        onCacheFailure: onCacheFailure,
        onCacheSuccess: onCacheSuccess,
        onRemoteSuccess: onRemoteSuccess,
        onRemoteFailure: onRemoteFailure,
      );
    } else {
      logger.d('Requesting to local datasource $localCall');
      ret = await _localObjectWrapper(localCall: localCall);
      if (ret == null || ret.isFailure) {
        logger.d('since $localCall failed trying to get it from remote call');
        ret = await _getFromRemoteDataSource(
          remoteCall: remoteCall,
          saveRemoteDataFunction: saveRemoteDataFunction,
          onCacheFailure: onCacheFailure,
          onCacheSuccess: onCacheSuccess,
          onRemoteSuccess: onRemoteSuccess,
          onRemoteFailure: onRemoteFailure,
        );
      }
    }
    logger.d('Results of calling requestData are ${ret.toString()}');
    return ret;
  }

  Future<DataModelWrapper<T>> _getFromRemoteDataSource<T>({
    required Future<DataModelWrapper<T>> Function() remoteCall,
    Future<DataModelWrapper<int>> Function(T data)? saveRemoteDataFunction,
    void Function(int insertedRow)? onCacheSuccess,
    void Function(BaseFailure failure)? onCacheFailure,
    FutureOr<void> Function(DataModelWrapper<T> remoteRes)? onRemoteSuccess,
    FutureOr<void> Function(NetworkFailure networkFailure)? onRemoteFailure,
  }) =>
      _remoteObjectWrapper(
        remoteCall: remoteCall,
        saveRemoteDataFunction: saveRemoteDataFunction,
        onCacheFailure: onCacheFailure,
        onCacheSuccess: onCacheSuccess,
        onRemoteSuccess: onRemoteSuccess,
        onRemoteFailure: onRemoteFailure,
      );

  Future<DataModelWrapper<T>> _remoteObjectWrapper<T>({
    required Future<DataModelWrapper<T>> Function() remoteCall,
    Future<DataModelWrapper<int>> Function(T data)? saveRemoteDataFunction,
    void Function(int insertedRow)? onCacheSuccess,
    void Function(BaseFailure failure)? onCacheFailure,
    FutureOr<void> Function(DataModelWrapper<T> remoteRes)? onRemoteSuccess,
    FutureOr<void> Function(NetworkFailure networkFailure)? onRemoteFailure,
  }) async {
    final res = await remoteCall.call();
    if (res.isSuccess) {
      await onRemoteSuccess?.call(res);
    } else if (res.isFailure) {
      await onRemoteFailure?.call(res.networkFailure!);
    }
    if (saveRemoteDataFunction != null) {
      if (res.data != null) {
        final saveResult = await saveRemoteDataFunction.call(res.data as T);
        if (saveResult.isFailure) {
          onCacheFailure?.call(saveResult.failure!);
        } else {
          logger.i('<BaseRepository>: Inserted rows count: ${saveResult.data}');
          onCacheSuccess?.call(saveResult.data!);
        }
      }
    }
    return res;
  }

  Future<DataModelWrapper<T>>? _localObjectWrapper<T>({
    required Future<DataModelWrapper<T>> Function()? localCall,
  }) =>
      localCall?.call();
}
