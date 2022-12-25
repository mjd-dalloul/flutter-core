import 'dart:developer';

import 'package:flutter_core/utils/data_model_wrapper.dart';
import 'package:flutter_core/utils/failures/base_failure.dart';

abstract class BaseRepository {
  Future<DataModelWrapper<T>> requestData<T>({
    required Future<DataModelWrapper<T>> Function() remoteCall,
    Future<DataModelWrapper<int>> Function(T? data)? saveRemoteDataFunction,
    bool forceUpdate = true,
    Future<DataModelWrapper<T>> Function()? localCall,
    void Function(int insertedRow)? onCacheSuccess,
    void Function(BaseFailure failure)? onCacheFailure,
  }) async {
    DataModelWrapper<T>? ret;
    if (forceUpdate) {
      ret = await _remoteObjectWrapper(
        remoteCall: remoteCall,
        saveRemoteDataFunction: saveRemoteDataFunction,
        onCacheFailure: onCacheFailure,
        onCacheSuccess: onCacheSuccess,
      );
    } else {
      ret = await _localObjectWrapper(localCall: localCall);
      if (ret == null || ret.isFailure) {
        ret = await _remoteObjectWrapper(
          remoteCall: remoteCall,
          saveRemoteDataFunction: saveRemoteDataFunction,
          onCacheFailure: onCacheFailure,
          onCacheSuccess: onCacheSuccess,
        );
      }
    }
    return ret;
  }

  Future<DataModelWrapper<T>> _remoteObjectWrapper<T>({
    required Future<DataModelWrapper<T>> Function() remoteCall,
    Future<DataModelWrapper<int>> Function(T? data)? saveRemoteDataFunction,
    void Function(int insertedRow)? onCacheSuccess,
    void Function(BaseFailure failure)? onCacheFailure,
  }) async {
    final res = await remoteCall.call();
    if (saveRemoteDataFunction != null) {
      if (res.isFailure) {
        log('<BaseRepository>: Could not save because network call did not go well');
      } else if (res.data != null) {
        final saveResult = await saveRemoteDataFunction.call(res.data);
        if (saveResult.isFailure) {
          log('<BaseRepository>: Could not save in database because ${saveResult.failure}');
          onCacheFailure?.call(saveResult.failure!);
        } else {
          log('<BaseRepository>: Inserted rows count: ${saveResult.data}');
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
