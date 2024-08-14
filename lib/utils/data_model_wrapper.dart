import 'package:flutter_core/utils/failures/base_failure.dart';
import 'package:flutter_core/utils/failures/local_failures.dart';
import 'package:flutter_core/utils/failures/network_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_model_wrapper.freezed.dart';

@freezed
class DataModelWrapper<T> with _$DataModelWrapper {
  const DataModelWrapper._();

  const factory DataModelWrapper.networkData({
    T? data,
  }) = NetworkData;

  const factory DataModelWrapper.empty() = Empty;

  const factory DataModelWrapper.isLoading({
    required bool isLoading,
  }) = IsLoading;

  const factory DataModelWrapper.networkDataFailure({
    required NetworkFailure networkFailure,
  }) = NetworkDataFailure;

  const factory DataModelWrapper.localDataFailure({
    required LocalFailure localFailure,
  }) = LocalDataFailure;

  const factory DataModelWrapper.localData({
    T? data,
  }) = LocalData;

  DataModelWrapper<T> transformData(T Function(T) transform) {
    return maybeMap(
      networkData: (res) => DataModelWrapper.networkData(data: transform.call(res.data)),
      localData: (res) => DataModelWrapper.localData(data: transform.call(res.data)),
      orElse: () => this,
    );
  }

  bool get isSuccess => maybeMap(
        localData: (_) => true,
        networkData: (_) => true,
        orElse: () => false,
      );

  bool get isFailure => maybeMap(
        localDataFailure: (_) => true,
        networkDataFailure: (_) => true,
        orElse: () => false,
      );

  T getOrThrow() {
    if (this.isFailure) {
      throw this.failure!;
    } else {
      return this.data!;
    }
  }

  T? get data => maybeWhen(
        localData: (data) => data,
        networkData: (data) => data,
        orElse: () => null,
      );

  BaseFailure? get failure =>
      maybeWhen(localDataFailure: (failure) => failure, networkDataFailure: (failure) => failure, orElse: () => null);

  NetworkFailure? get networkFailure => maybeWhen(
        networkDataFailure: (f) => f,
        orElse: () => null,
      );

  LocalFailure? get localFailure => maybeWhen(
        localDataFailure: (f) => f,
        orElse: () => null,
      );

  bool get isLoading => maybeWhen(
        isLoading: (isLoading) => isLoading,
        orElse: () => false,
      );

  bool get isEmpty => maybeWhen(
        empty: () => true,
        orElse: () => false,
      );

  @override
  String toString() {
    return maybeWhen(
      orElse: () => '',
      networkData: (data) => 'DataModelWrapper.networkData with data ${data.toString()}',
      localData: (data) => 'DataModelWrapper.localData with data ${data.toString()}',
      networkDataFailure: (failure) => 'DataModelWrapper.networkFailure with failure ${failure.toString()}',
      localDataFailure: (failure) => 'DataModelWrapper.localFailure with failure ${failure.toString()}',
    );
  }
}
