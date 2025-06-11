import 'package:flutter_core/utils/failures/base_failure.dart';
import 'package:flutter_core/utils/failures/local_failures.dart';
import 'package:flutter_core/utils/failures/network_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_model_wrapper.freezed.dart';

@freezed
sealed class DataModelWrapper<T> with _$DataModelWrapper<T> {
  const DataModelWrapper._();

  const factory DataModelWrapper.networkData({
    T? data,
  }) = NetworkData<T>;

  const factory DataModelWrapper.empty() = Empty<T>;

  const factory DataModelWrapper.isLoading({
    required bool isLoading,
  }) = IsLoading<T>;

  const factory DataModelWrapper.networkDataFailure({
    required NetworkFailure networkFailure,
  }) = NetworkDataFailure<T>;

  const factory DataModelWrapper.localDataFailure({
    required LocalFailure localFailure,
  }) = LocalDataFailure<T>;

  const factory DataModelWrapper.localData({
    T? data,
  }) = LocalData<T>;
}

extension DataModelWrapperExtension<T> on DataModelWrapper<T> {
  DataModelWrapper<T> transformData(T Function(T) transform) {
    return switch (this) {
      NetworkData(data: final data) => DataModelWrapper<T>.networkData(data: transform.call(data as T)),
      LocalData(data: final data) => DataModelWrapper<T>.localData(data: transform.call(data as T)),
      _ => this,
    };
  }

  bool get isSuccess {
    return switch (this) {
      LocalData() => true,
      NetworkData() => true,
      _ => false,
    };
  }

  bool get isFailure {
    return switch (this) {
      LocalDataFailure() => true,
      NetworkDataFailure() => true,
      _ => false,
    };
  }

  T? getOrThrow() {
    return switch (this) {
      LocalData(data: final data) => data as T,
      NetworkData(data: final data) => data as T,
      Empty() => data,
      _ => throw failure as Object,
    };
  }

  T? get data {
    return switch (this) {
      LocalData(data: final data) => data,
      NetworkData(data: final data) => data,
      _ => null,
    };
  }

  BaseFailure? get failure {
    return switch (this) {
      LocalDataFailure(localFailure: final failure) => failure,
      NetworkDataFailure(networkFailure: final failure) => failure,
      _ => null,
    };
  }

  NetworkFailure? get networkFailure {
    return switch (this) {
      NetworkDataFailure(networkFailure: final failure) => failure,
      _ => null,
    };
  }

  LocalFailure? get localFailure {
    return switch (this) {
      LocalDataFailure(localFailure: final failure) => failure,
      _ => null,
    };
  }

  bool get isLoading {
    return switch (this) {
      IsLoading(isLoading: final isLoading) => isLoading,
      _ => false,
    };
  }

  bool get isEmpty {
    return switch (this) {
      Empty() => true,
      _ => false,
    };
  }
//
// @override
// String toString() {
//   return switch (this) {
//     NetworkData(data: final data) =>
//     'DataModelWrapper.networkData with data ${data.toString()}',
//     LocalData(data: final data) =>
//     'DataModelWrapper.localData with data ${data.toString()}',
//     NetworkDataFailure(networkFailure: final failure) =>
//     'DataModelWrapper.networkFailure with failure ${failure.toString()}',
//     LocalDataFailure(localFailure: final failure) =>
//     'DataModelWrapper.localFailure with failure ${failure.toString()}',
//     _ => '',
//   };
// }
}