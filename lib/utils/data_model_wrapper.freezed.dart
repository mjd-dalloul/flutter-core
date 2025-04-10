// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_model_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DataModelWrapper<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) networkData,
    required TResult Function() empty,
    required TResult Function(bool isLoading) isLoading,
    required TResult Function(NetworkFailure networkFailure) networkDataFailure,
    required TResult Function(LocalFailure localFailure) localDataFailure,
    required TResult Function(T? data) localData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? networkData,
    TResult? Function()? empty,
    TResult? Function(bool isLoading)? isLoading,
    TResult? Function(NetworkFailure networkFailure)? networkDataFailure,
    TResult? Function(LocalFailure localFailure)? localDataFailure,
    TResult? Function(T? data)? localData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? networkData,
    TResult Function()? empty,
    TResult Function(bool isLoading)? isLoading,
    TResult Function(NetworkFailure networkFailure)? networkDataFailure,
    TResult Function(LocalFailure localFailure)? localDataFailure,
    TResult Function(T? data)? localData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkData<T> value) networkData,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(IsLoading<T> value) isLoading,
    required TResult Function(NetworkDataFailure<T> value) networkDataFailure,
    required TResult Function(LocalDataFailure<T> value) localDataFailure,
    required TResult Function(LocalData<T> value) localData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkData<T> value)? networkData,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(IsLoading<T> value)? isLoading,
    TResult? Function(NetworkDataFailure<T> value)? networkDataFailure,
    TResult? Function(LocalDataFailure<T> value)? localDataFailure,
    TResult? Function(LocalData<T> value)? localData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkData<T> value)? networkData,
    TResult Function(Empty<T> value)? empty,
    TResult Function(IsLoading<T> value)? isLoading,
    TResult Function(NetworkDataFailure<T> value)? networkDataFailure,
    TResult Function(LocalDataFailure<T> value)? localDataFailure,
    TResult Function(LocalData<T> value)? localData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelWrapperCopyWith<T, $Res> {
  factory $DataModelWrapperCopyWith(
          DataModelWrapper<T> value, $Res Function(DataModelWrapper<T>) then) =
      _$DataModelWrapperCopyWithImpl<T, $Res, DataModelWrapper<T>>;
}

/// @nodoc
class _$DataModelWrapperCopyWithImpl<T, $Res, $Val extends DataModelWrapper<T>>
    implements $DataModelWrapperCopyWith<T, $Res> {
  _$DataModelWrapperCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataModelWrapper
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NetworkDataImplCopyWith<T, $Res> {
  factory _$$NetworkDataImplCopyWith(_$NetworkDataImpl<T> value, $Res Function(_$NetworkDataImpl<T>) then) =
      __$$NetworkDataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$$NetworkDataImplCopyWithImpl<T, $Res> extends _$DataModelWrapperCopyWithImpl<T, $Res, _$NetworkDataImpl<T>>
    implements _$$NetworkDataImplCopyWith<T, $Res> {
  __$$NetworkDataImplCopyWithImpl(_$NetworkDataImpl<T> _value, $Res Function(_$NetworkDataImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DataModelWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$NetworkDataImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$NetworkDataImpl<T> extends NetworkData<T> {
  const _$NetworkDataImpl({this.data}) : super._();

  @override
  final T? data;

  @override
  String toString() {
    return 'DataModelWrapper<$T>.networkData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkDataImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of DataModelWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkDataImplCopyWith<T, _$NetworkDataImpl<T>> get copyWith =>
      __$$NetworkDataImplCopyWithImpl<T, _$NetworkDataImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) networkData,
    required TResult Function() empty,
    required TResult Function(bool isLoading) isLoading,
    required TResult Function(NetworkFailure networkFailure) networkDataFailure,
    required TResult Function(LocalFailure localFailure) localDataFailure,
    required TResult Function(T? data) localData,
  }) {
    return networkData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? networkData,
    TResult? Function()? empty,
    TResult? Function(bool isLoading)? isLoading,
    TResult? Function(NetworkFailure networkFailure)? networkDataFailure,
    TResult? Function(LocalFailure localFailure)? localDataFailure,
    TResult? Function(T? data)? localData,
  }) {
    return networkData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? networkData,
    TResult Function()? empty,
    TResult Function(bool isLoading)? isLoading,
    TResult Function(NetworkFailure networkFailure)? networkDataFailure,
    TResult Function(LocalFailure localFailure)? localDataFailure,
    TResult Function(T? data)? localData,
    required TResult orElse(),
  }) {
    if (networkData != null) {
      return networkData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkData<T> value) networkData,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(IsLoading<T> value) isLoading,
    required TResult Function(NetworkDataFailure<T> value) networkDataFailure,
    required TResult Function(LocalDataFailure<T> value) localDataFailure,
    required TResult Function(LocalData<T> value) localData,
  }) {
    return networkData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkData<T> value)? networkData,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(IsLoading<T> value)? isLoading,
    TResult? Function(NetworkDataFailure<T> value)? networkDataFailure,
    TResult? Function(LocalDataFailure<T> value)? localDataFailure,
    TResult? Function(LocalData<T> value)? localData,
  }) {
    return networkData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkData<T> value)? networkData,
    TResult Function(Empty<T> value)? empty,
    TResult Function(IsLoading<T> value)? isLoading,
    TResult Function(NetworkDataFailure<T> value)? networkDataFailure,
    TResult Function(LocalDataFailure<T> value)? localDataFailure,
    TResult Function(LocalData<T> value)? localData,
    required TResult orElse(),
  }) {
    if (networkData != null) {
      return networkData(this);
    }
    return orElse();
  }
}

abstract class NetworkData<T> extends DataModelWrapper<T> {
  const factory NetworkData({final T? data}) = _$NetworkDataImpl<T>;
  const NetworkData._() : super._();

  T? get data;

  /// Create a copy of DataModelWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkDataImplCopyWith<T, _$NetworkDataImpl<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<T, $Res> {
  factory _$$EmptyImplCopyWith(_$EmptyImpl<T> value, $Res Function(_$EmptyImpl<T>) then) =
      __$$EmptyImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<T, $Res> extends _$DataModelWrapperCopyWithImpl<T, $Res, _$EmptyImpl<T>>
    implements _$$EmptyImplCopyWith<T, $Res> {
  __$$EmptyImplCopyWithImpl(_$EmptyImpl<T> _value, $Res Function(_$EmptyImpl<T>) _then) : super(_value, _then);

  /// Create a copy of DataModelWrapper
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmptyImpl<T> extends Empty<T> {
  const _$EmptyImpl() : super._();

  @override
  String toString() {
    return 'DataModelWrapper<$T>.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$EmptyImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) networkData,
    required TResult Function() empty,
    required TResult Function(bool isLoading) isLoading,
    required TResult Function(NetworkFailure networkFailure) networkDataFailure,
    required TResult Function(LocalFailure localFailure) localDataFailure,
    required TResult Function(T? data) localData,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? networkData,
    TResult? Function()? empty,
    TResult? Function(bool isLoading)? isLoading,
    TResult? Function(NetworkFailure networkFailure)? networkDataFailure,
    TResult? Function(LocalFailure localFailure)? localDataFailure,
    TResult? Function(T? data)? localData,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? networkData,
    TResult Function()? empty,
    TResult Function(bool isLoading)? isLoading,
    TResult Function(NetworkFailure networkFailure)? networkDataFailure,
    TResult Function(LocalFailure localFailure)? localDataFailure,
    TResult Function(T? data)? localData,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkData<T> value) networkData,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(IsLoading<T> value) isLoading,
    required TResult Function(NetworkDataFailure<T> value) networkDataFailure,
    required TResult Function(LocalDataFailure<T> value) localDataFailure,
    required TResult Function(LocalData<T> value) localData,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkData<T> value)? networkData,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(IsLoading<T> value)? isLoading,
    TResult? Function(NetworkDataFailure<T> value)? networkDataFailure,
    TResult? Function(LocalDataFailure<T> value)? localDataFailure,
    TResult? Function(LocalData<T> value)? localData,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkData<T> value)? networkData,
    TResult Function(Empty<T> value)? empty,
    TResult Function(IsLoading<T> value)? isLoading,
    TResult Function(NetworkDataFailure<T> value)? networkDataFailure,
    TResult Function(LocalDataFailure<T> value)? localDataFailure,
    TResult Function(LocalData<T> value)? localData,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> extends DataModelWrapper<T> {
  const factory Empty() = _$EmptyImpl<T>;
  const Empty._() : super._();
}

/// @nodoc
abstract class _$$IsLoadingImplCopyWith<T, $Res> {
  factory _$$IsLoadingImplCopyWith(_$IsLoadingImpl<T> value, $Res Function(_$IsLoadingImpl<T>) then) =
      __$$IsLoadingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$IsLoadingImplCopyWithImpl<T, $Res> extends _$DataModelWrapperCopyWithImpl<T, $Res, _$IsLoadingImpl<T>>
    implements _$$IsLoadingImplCopyWith<T, $Res> {
  __$$IsLoadingImplCopyWithImpl(_$IsLoadingImpl<T> _value, $Res Function(_$IsLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DataModelWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$IsLoadingImpl<T>(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IsLoadingImpl<T> extends IsLoading<T> {
  const _$IsLoadingImpl({required this.isLoading}) : super._();

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'DataModelWrapper<$T>.isLoading(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsLoadingImpl<T> &&
            (identical(other.isLoading, isLoading) || other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  /// Create a copy of DataModelWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IsLoadingImplCopyWith<T, _$IsLoadingImpl<T>> get copyWith =>
      __$$IsLoadingImplCopyWithImpl<T, _$IsLoadingImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) networkData,
    required TResult Function() empty,
    required TResult Function(bool isLoading) isLoading,
    required TResult Function(NetworkFailure networkFailure) networkDataFailure,
    required TResult Function(LocalFailure localFailure) localDataFailure,
    required TResult Function(T? data) localData,
  }) {
    return isLoading(this.isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? networkData,
    TResult? Function()? empty,
    TResult? Function(bool isLoading)? isLoading,
    TResult? Function(NetworkFailure networkFailure)? networkDataFailure,
    TResult? Function(LocalFailure localFailure)? localDataFailure,
    TResult? Function(T? data)? localData,
  }) {
    return isLoading?.call(this.isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? networkData,
    TResult Function()? empty,
    TResult Function(bool isLoading)? isLoading,
    TResult Function(NetworkFailure networkFailure)? networkDataFailure,
    TResult Function(LocalFailure localFailure)? localDataFailure,
    TResult Function(T? data)? localData,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this.isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkData<T> value) networkData,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(IsLoading<T> value) isLoading,
    required TResult Function(NetworkDataFailure<T> value) networkDataFailure,
    required TResult Function(LocalDataFailure<T> value) localDataFailure,
    required TResult Function(LocalData<T> value) localData,
  }) {
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkData<T> value)? networkData,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(IsLoading<T> value)? isLoading,
    TResult? Function(NetworkDataFailure<T> value)? networkDataFailure,
    TResult? Function(LocalDataFailure<T> value)? localDataFailure,
    TResult? Function(LocalData<T> value)? localData,
  }) {
    return isLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkData<T> value)? networkData,
    TResult Function(Empty<T> value)? empty,
    TResult Function(IsLoading<T> value)? isLoading,
    TResult Function(NetworkDataFailure<T> value)? networkDataFailure,
    TResult Function(LocalDataFailure<T> value)? localDataFailure,
    TResult Function(LocalData<T> value)? localData,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class IsLoading<T> extends DataModelWrapper<T> {
  const factory IsLoading({required final bool isLoading}) = _$IsLoadingImpl<T>;
  const IsLoading._() : super._();

  bool get isLoading;

  /// Create a copy of DataModelWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IsLoadingImplCopyWith<T, _$IsLoadingImpl<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkDataFailureImplCopyWith<T, $Res> {
  factory _$$NetworkDataFailureImplCopyWith(
          _$NetworkDataFailureImpl<T> value, $Res Function(_$NetworkDataFailureImpl<T>) then) =
      __$$NetworkDataFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({NetworkFailure networkFailure});

  $NetworkFailureCopyWith<$Res> get networkFailure;
}

/// @nodoc
class __$$NetworkDataFailureImplCopyWithImpl<T, $Res>
    extends _$DataModelWrapperCopyWithImpl<T, $Res, _$NetworkDataFailureImpl<T>>
    implements _$$NetworkDataFailureImplCopyWith<T, $Res> {
  __$$NetworkDataFailureImplCopyWithImpl(
      _$NetworkDataFailureImpl<T> _value, $Res Function(_$NetworkDataFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DataModelWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkFailure = null,
  }) {
    return _then(_$NetworkDataFailureImpl<T>(
      networkFailure: null == networkFailure
          ? _value.networkFailure
          : networkFailure // ignore: cast_nullable_to_non_nullable
              as NetworkFailure,
    ));
  }

  /// Create a copy of DataModelWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkFailureCopyWith<$Res> get networkFailure {
    return $NetworkFailureCopyWith<$Res>(_value.networkFailure, (value) {
      return _then(_value.copyWith(networkFailure: value));
    });
  }
}

/// @nodoc

class _$NetworkDataFailureImpl<T> extends NetworkDataFailure<T> {
  const _$NetworkDataFailureImpl({required this.networkFailure}) : super._();

  @override
  final NetworkFailure networkFailure;

  @override
  String toString() {
    return 'DataModelWrapper<$T>.networkDataFailure(networkFailure: $networkFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkDataFailureImpl<T> &&
            (identical(other.networkFailure, networkFailure) || other.networkFailure == networkFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkFailure);

  /// Create a copy of DataModelWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkDataFailureImplCopyWith<T, _$NetworkDataFailureImpl<T>> get copyWith =>
      __$$NetworkDataFailureImplCopyWithImpl<T, _$NetworkDataFailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) networkData,
    required TResult Function() empty,
    required TResult Function(bool isLoading) isLoading,
    required TResult Function(NetworkFailure networkFailure) networkDataFailure,
    required TResult Function(LocalFailure localFailure) localDataFailure,
    required TResult Function(T? data) localData,
  }) {
    return networkDataFailure(networkFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? networkData,
    TResult? Function()? empty,
    TResult? Function(bool isLoading)? isLoading,
    TResult? Function(NetworkFailure networkFailure)? networkDataFailure,
    TResult? Function(LocalFailure localFailure)? localDataFailure,
    TResult? Function(T? data)? localData,
  }) {
    return networkDataFailure?.call(networkFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? networkData,
    TResult Function()? empty,
    TResult Function(bool isLoading)? isLoading,
    TResult Function(NetworkFailure networkFailure)? networkDataFailure,
    TResult Function(LocalFailure localFailure)? localDataFailure,
    TResult Function(T? data)? localData,
    required TResult orElse(),
  }) {
    if (networkDataFailure != null) {
      return networkDataFailure(networkFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkData<T> value) networkData,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(IsLoading<T> value) isLoading,
    required TResult Function(NetworkDataFailure<T> value) networkDataFailure,
    required TResult Function(LocalDataFailure<T> value) localDataFailure,
    required TResult Function(LocalData<T> value) localData,
  }) {
    return networkDataFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkData<T> value)? networkData,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(IsLoading<T> value)? isLoading,
    TResult? Function(NetworkDataFailure<T> value)? networkDataFailure,
    TResult? Function(LocalDataFailure<T> value)? localDataFailure,
    TResult? Function(LocalData<T> value)? localData,
  }) {
    return networkDataFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkData<T> value)? networkData,
    TResult Function(Empty<T> value)? empty,
    TResult Function(IsLoading<T> value)? isLoading,
    TResult Function(NetworkDataFailure<T> value)? networkDataFailure,
    TResult Function(LocalDataFailure<T> value)? localDataFailure,
    TResult Function(LocalData<T> value)? localData,
    required TResult orElse(),
  }) {
    if (networkDataFailure != null) {
      return networkDataFailure(this);
    }
    return orElse();
  }
}

abstract class NetworkDataFailure<T> extends DataModelWrapper<T> {
  const factory NetworkDataFailure({required final NetworkFailure networkFailure}) = _$NetworkDataFailureImpl<T>;
  const NetworkDataFailure._() : super._();

  NetworkFailure get networkFailure;

  /// Create a copy of DataModelWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkDataFailureImplCopyWith<T, _$NetworkDataFailureImpl<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalDataFailureImplCopyWith<T, $Res> {
  factory _$$LocalDataFailureImplCopyWith(
          _$LocalDataFailureImpl<T> value, $Res Function(_$LocalDataFailureImpl<T>) then) =
      __$$LocalDataFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({LocalFailure localFailure});

  $LocalFailureCopyWith<$Res> get localFailure;
}

/// @nodoc
class __$$LocalDataFailureImplCopyWithImpl<T, $Res>
    extends _$DataModelWrapperCopyWithImpl<T, $Res, _$LocalDataFailureImpl<T>>
    implements _$$LocalDataFailureImplCopyWith<T, $Res> {
  __$$LocalDataFailureImplCopyWithImpl(_$LocalDataFailureImpl<T> _value, $Res Function(_$LocalDataFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DataModelWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localFailure = null,
  }) {
    return _then(_$LocalDataFailureImpl<T>(
      localFailure: null == localFailure
          ? _value.localFailure
          : localFailure // ignore: cast_nullable_to_non_nullable
              as LocalFailure,
    ));
  }

  /// Create a copy of DataModelWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalFailureCopyWith<$Res> get localFailure {
    return $LocalFailureCopyWith<$Res>(_value.localFailure, (value) {
      return _then(_value.copyWith(localFailure: value));
    });
  }
}

/// @nodoc

class _$LocalDataFailureImpl<T> extends LocalDataFailure<T> {
  const _$LocalDataFailureImpl({required this.localFailure}) : super._();

  @override
  final LocalFailure localFailure;

  @override
  String toString() {
    return 'DataModelWrapper<$T>.localDataFailure(localFailure: $localFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalDataFailureImpl<T> &&
            (identical(other.localFailure, localFailure) || other.localFailure == localFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localFailure);

  /// Create a copy of DataModelWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalDataFailureImplCopyWith<T, _$LocalDataFailureImpl<T>> get copyWith =>
      __$$LocalDataFailureImplCopyWithImpl<T, _$LocalDataFailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) networkData,
    required TResult Function() empty,
    required TResult Function(bool isLoading) isLoading,
    required TResult Function(NetworkFailure networkFailure) networkDataFailure,
    required TResult Function(LocalFailure localFailure) localDataFailure,
    required TResult Function(T? data) localData,
  }) {
    return localDataFailure(localFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? networkData,
    TResult? Function()? empty,
    TResult? Function(bool isLoading)? isLoading,
    TResult? Function(NetworkFailure networkFailure)? networkDataFailure,
    TResult? Function(LocalFailure localFailure)? localDataFailure,
    TResult? Function(T? data)? localData,
  }) {
    return localDataFailure?.call(localFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? networkData,
    TResult Function()? empty,
    TResult Function(bool isLoading)? isLoading,
    TResult Function(NetworkFailure networkFailure)? networkDataFailure,
    TResult Function(LocalFailure localFailure)? localDataFailure,
    TResult Function(T? data)? localData,
    required TResult orElse(),
  }) {
    if (localDataFailure != null) {
      return localDataFailure(localFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkData<T> value) networkData,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(IsLoading<T> value) isLoading,
    required TResult Function(NetworkDataFailure<T> value) networkDataFailure,
    required TResult Function(LocalDataFailure<T> value) localDataFailure,
    required TResult Function(LocalData<T> value) localData,
  }) {
    return localDataFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkData<T> value)? networkData,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(IsLoading<T> value)? isLoading,
    TResult? Function(NetworkDataFailure<T> value)? networkDataFailure,
    TResult? Function(LocalDataFailure<T> value)? localDataFailure,
    TResult? Function(LocalData<T> value)? localData,
  }) {
    return localDataFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkData<T> value)? networkData,
    TResult Function(Empty<T> value)? empty,
    TResult Function(IsLoading<T> value)? isLoading,
    TResult Function(NetworkDataFailure<T> value)? networkDataFailure,
    TResult Function(LocalDataFailure<T> value)? localDataFailure,
    TResult Function(LocalData<T> value)? localData,
    required TResult orElse(),
  }) {
    if (localDataFailure != null) {
      return localDataFailure(this);
    }
    return orElse();
  }
}

abstract class LocalDataFailure<T> extends DataModelWrapper<T> {
  const factory LocalDataFailure({required final LocalFailure localFailure}) = _$LocalDataFailureImpl<T>;
  const LocalDataFailure._() : super._();

  LocalFailure get localFailure;

  /// Create a copy of DataModelWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalDataFailureImplCopyWith<T, _$LocalDataFailureImpl<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalDataImplCopyWith<T, $Res> {
  factory _$$LocalDataImplCopyWith(_$LocalDataImpl<T> value, $Res Function(_$LocalDataImpl<T>) then) =
      __$$LocalDataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$$LocalDataImplCopyWithImpl<T, $Res> extends _$DataModelWrapperCopyWithImpl<T, $Res, _$LocalDataImpl<T>>
    implements _$$LocalDataImplCopyWith<T, $Res> {
  __$$LocalDataImplCopyWithImpl(_$LocalDataImpl<T> _value, $Res Function(_$LocalDataImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DataModelWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$LocalDataImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$LocalDataImpl<T> extends LocalData<T> {
  const _$LocalDataImpl({this.data}) : super._();

  @override
  final T? data;

  @override
  String toString() {
    return 'DataModelWrapper<$T>.localData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalDataImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of DataModelWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalDataImplCopyWith<T, _$LocalDataImpl<T>> get copyWith =>
      __$$LocalDataImplCopyWithImpl<T, _$LocalDataImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) networkData,
    required TResult Function() empty,
    required TResult Function(bool isLoading) isLoading,
    required TResult Function(NetworkFailure networkFailure) networkDataFailure,
    required TResult Function(LocalFailure localFailure) localDataFailure,
    required TResult Function(T? data) localData,
  }) {
    return localData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? networkData,
    TResult? Function()? empty,
    TResult? Function(bool isLoading)? isLoading,
    TResult? Function(NetworkFailure networkFailure)? networkDataFailure,
    TResult? Function(LocalFailure localFailure)? localDataFailure,
    TResult? Function(T? data)? localData,
  }) {
    return localData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? networkData,
    TResult Function()? empty,
    TResult Function(bool isLoading)? isLoading,
    TResult Function(NetworkFailure networkFailure)? networkDataFailure,
    TResult Function(LocalFailure localFailure)? localDataFailure,
    TResult Function(T? data)? localData,
    required TResult orElse(),
  }) {
    if (localData != null) {
      return localData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkData<T> value) networkData,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(IsLoading<T> value) isLoading,
    required TResult Function(NetworkDataFailure<T> value) networkDataFailure,
    required TResult Function(LocalDataFailure<T> value) localDataFailure,
    required TResult Function(LocalData<T> value) localData,
  }) {
    return localData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkData<T> value)? networkData,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(IsLoading<T> value)? isLoading,
    TResult? Function(NetworkDataFailure<T> value)? networkDataFailure,
    TResult? Function(LocalDataFailure<T> value)? localDataFailure,
    TResult? Function(LocalData<T> value)? localData,
  }) {
    return localData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkData<T> value)? networkData,
    TResult Function(Empty<T> value)? empty,
    TResult Function(IsLoading<T> value)? isLoading,
    TResult Function(NetworkDataFailure<T> value)? networkDataFailure,
    TResult Function(LocalDataFailure<T> value)? localDataFailure,
    TResult Function(LocalData<T> value)? localData,
    required TResult orElse(),
  }) {
    if (localData != null) {
      return localData(this);
    }
    return orElse();
  }
}

abstract class LocalData<T> extends DataModelWrapper<T> {
  const factory LocalData({final T? data}) = _$LocalDataImpl<T>;
  const LocalData._() : super._();

  T? get data;

  /// Create a copy of DataModelWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalDataImplCopyWith<T, _$LocalDataImpl<T>> get copyWith => throw _privateConstructorUsedError;
}
