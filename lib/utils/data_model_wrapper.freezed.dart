// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_model_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataModelWrapper<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) networkData,
    required TResult Function(NetworkFailure networkFailure) networkDataFailure,
    required TResult Function(LocalFailure localFailure) localDataFailure,
    required TResult Function(T? data) localData,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? data)? networkData,
    TResult Function(NetworkFailure networkFailure)? networkDataFailure,
    TResult Function(LocalFailure localFailure)? localDataFailure,
    TResult Function(T? data)? localData,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? networkData,
    TResult Function(NetworkFailure networkFailure)? networkDataFailure,
    TResult Function(LocalFailure localFailure)? localDataFailure,
    TResult Function(T? data)? localData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkData<T> value) networkData,
    required TResult Function(NetworkDataFailure<T> value) networkDataFailure,
    required TResult Function(LocalDataFailure<T> value) localDataFailure,
    required TResult Function(LocalData<T> value) localData,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkData<T> value)? networkData,
    TResult Function(NetworkDataFailure<T> value)? networkDataFailure,
    TResult Function(LocalDataFailure<T> value)? localDataFailure,
    TResult Function(LocalData<T> value)? localData,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkData<T> value)? networkData,
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
      _$DataModelWrapperCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$DataModelWrapperCopyWithImpl<T, $Res>
    implements $DataModelWrapperCopyWith<T, $Res> {
  _$DataModelWrapperCopyWithImpl(this._value, this._then);

  final DataModelWrapper<T> _value;

  // ignore: unused_field
  final $Res Function(DataModelWrapper<T>) _then;
}

/// @nodoc
abstract class _$$NetworkDataCopyWith<T, $Res> {
  factory _$$NetworkDataCopyWith(
          _$NetworkData<T> value, $Res Function(_$NetworkData<T>) then) =
      __$$NetworkDataCopyWithImpl<T, $Res>;

  $Res call({T? data});
}

/// @nodoc
class __$$NetworkDataCopyWithImpl<T, $Res>
    extends _$DataModelWrapperCopyWithImpl<T, $Res>
    implements _$$NetworkDataCopyWith<T, $Res> {
  __$$NetworkDataCopyWithImpl(
      _$NetworkData<T> _value, $Res Function(_$NetworkData<T>) _then)
      : super(_value, (v) => _then(v as _$NetworkData<T>));

  @override
  _$NetworkData<T> get _value => super._value as _$NetworkData<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$NetworkData<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$NetworkData<T> extends NetworkData<T> {
  const _$NetworkData({this.data}) : super._();

  @override
  final T? data;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkData<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$NetworkDataCopyWith<T, _$NetworkData<T>> get copyWith =>
      __$$NetworkDataCopyWithImpl<T, _$NetworkData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) networkData,
    required TResult Function(NetworkFailure networkFailure) networkDataFailure,
    required TResult Function(LocalFailure localFailure) localDataFailure,
    required TResult Function(T? data) localData,
  }) {
    return networkData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? data)? networkData,
    TResult Function(NetworkFailure networkFailure)? networkDataFailure,
    TResult Function(LocalFailure localFailure)? localDataFailure,
    TResult Function(T? data)? localData,
  }) {
    return networkData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? networkData,
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
    required TResult Function(NetworkDataFailure<T> value) networkDataFailure,
    required TResult Function(LocalDataFailure<T> value) localDataFailure,
    required TResult Function(LocalData<T> value) localData,
  }) {
    return networkData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkData<T> value)? networkData,
    TResult Function(NetworkDataFailure<T> value)? networkDataFailure,
    TResult Function(LocalDataFailure<T> value)? localDataFailure,
    TResult Function(LocalData<T> value)? localData,
  }) {
    return networkData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkData<T> value)? networkData,
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
  const factory NetworkData({final T? data}) = _$NetworkData<T>;

  const NetworkData._() : super._();

  T? get data;

  @JsonKey(ignore: true)
  _$$NetworkDataCopyWith<T, _$NetworkData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkDataFailureCopyWith<T, $Res> {
  factory _$$NetworkDataFailureCopyWith(_$NetworkDataFailure<T> value,
          $Res Function(_$NetworkDataFailure<T>) then) =
      __$$NetworkDataFailureCopyWithImpl<T, $Res>;

  $Res call({NetworkFailure networkFailure});

  $NetworkFailureCopyWith<$Res> get networkFailure;
}

/// @nodoc
class __$$NetworkDataFailureCopyWithImpl<T, $Res>
    extends _$DataModelWrapperCopyWithImpl<T, $Res>
    implements _$$NetworkDataFailureCopyWith<T, $Res> {
  __$$NetworkDataFailureCopyWithImpl(_$NetworkDataFailure<T> _value,
      $Res Function(_$NetworkDataFailure<T>) _then)
      : super(_value, (v) => _then(v as _$NetworkDataFailure<T>));

  @override
  _$NetworkDataFailure<T> get _value => super._value as _$NetworkDataFailure<T>;

  @override
  $Res call({
    Object? networkFailure = freezed,
  }) {
    return _then(_$NetworkDataFailure<T>(
      networkFailure: networkFailure == freezed
          ? _value.networkFailure
          : networkFailure // ignore: cast_nullable_to_non_nullable
              as NetworkFailure,
    ));
  }

  @override
  $NetworkFailureCopyWith<$Res> get networkFailure {
    return $NetworkFailureCopyWith<$Res>(_value.networkFailure, (value) {
      return _then(_value.copyWith(networkFailure: value));
    });
  }
}

/// @nodoc

class _$NetworkDataFailure<T> extends NetworkDataFailure<T> {
  const _$NetworkDataFailure({required this.networkFailure}) : super._();

  @override
  final NetworkFailure networkFailure;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkDataFailure<T> &&
            const DeepCollectionEquality()
                .equals(other.networkFailure, networkFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(networkFailure));

  @JsonKey(ignore: true)
  @override
  _$$NetworkDataFailureCopyWith<T, _$NetworkDataFailure<T>> get copyWith =>
      __$$NetworkDataFailureCopyWithImpl<T, _$NetworkDataFailure<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) networkData,
    required TResult Function(NetworkFailure networkFailure) networkDataFailure,
    required TResult Function(LocalFailure localFailure) localDataFailure,
    required TResult Function(T? data) localData,
  }) {
    return networkDataFailure(networkFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? data)? networkData,
    TResult Function(NetworkFailure networkFailure)? networkDataFailure,
    TResult Function(LocalFailure localFailure)? localDataFailure,
    TResult Function(T? data)? localData,
  }) {
    return networkDataFailure?.call(networkFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? networkData,
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
    required TResult Function(NetworkDataFailure<T> value) networkDataFailure,
    required TResult Function(LocalDataFailure<T> value) localDataFailure,
    required TResult Function(LocalData<T> value) localData,
  }) {
    return networkDataFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkData<T> value)? networkData,
    TResult Function(NetworkDataFailure<T> value)? networkDataFailure,
    TResult Function(LocalDataFailure<T> value)? localDataFailure,
    TResult Function(LocalData<T> value)? localData,
  }) {
    return networkDataFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkData<T> value)? networkData,
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
  const factory NetworkDataFailure(
      {required final NetworkFailure networkFailure}) = _$NetworkDataFailure<T>;

  const NetworkDataFailure._() : super._();

  NetworkFailure get networkFailure;

  @JsonKey(ignore: true)
  _$$NetworkDataFailureCopyWith<T, _$NetworkDataFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalDataFailureCopyWith<T, $Res> {
  factory _$$LocalDataFailureCopyWith(_$LocalDataFailure<T> value,
          $Res Function(_$LocalDataFailure<T>) then) =
      __$$LocalDataFailureCopyWithImpl<T, $Res>;

  $Res call({LocalFailure localFailure});

  $LocalFailureCopyWith<$Res> get localFailure;
}

/// @nodoc
class __$$LocalDataFailureCopyWithImpl<T, $Res>
    extends _$DataModelWrapperCopyWithImpl<T, $Res>
    implements _$$LocalDataFailureCopyWith<T, $Res> {
  __$$LocalDataFailureCopyWithImpl(
      _$LocalDataFailure<T> _value, $Res Function(_$LocalDataFailure<T>) _then)
      : super(_value, (v) => _then(v as _$LocalDataFailure<T>));

  @override
  _$LocalDataFailure<T> get _value => super._value as _$LocalDataFailure<T>;

  @override
  $Res call({
    Object? localFailure = freezed,
  }) {
    return _then(_$LocalDataFailure<T>(
      localFailure: localFailure == freezed
          ? _value.localFailure
          : localFailure // ignore: cast_nullable_to_non_nullable
              as LocalFailure,
    ));
  }

  @override
  $LocalFailureCopyWith<$Res> get localFailure {
    return $LocalFailureCopyWith<$Res>(_value.localFailure, (value) {
      return _then(_value.copyWith(localFailure: value));
    });
  }
}

/// @nodoc

class _$LocalDataFailure<T> extends LocalDataFailure<T> {
  const _$LocalDataFailure({required this.localFailure}) : super._();

  @override
  final LocalFailure localFailure;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalDataFailure<T> &&
            const DeepCollectionEquality()
                .equals(other.localFailure, localFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(localFailure));

  @JsonKey(ignore: true)
  @override
  _$$LocalDataFailureCopyWith<T, _$LocalDataFailure<T>> get copyWith =>
      __$$LocalDataFailureCopyWithImpl<T, _$LocalDataFailure<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) networkData,
    required TResult Function(NetworkFailure networkFailure) networkDataFailure,
    required TResult Function(LocalFailure localFailure) localDataFailure,
    required TResult Function(T? data) localData,
  }) {
    return localDataFailure(localFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? data)? networkData,
    TResult Function(NetworkFailure networkFailure)? networkDataFailure,
    TResult Function(LocalFailure localFailure)? localDataFailure,
    TResult Function(T? data)? localData,
  }) {
    return localDataFailure?.call(localFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? networkData,
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
    required TResult Function(NetworkDataFailure<T> value) networkDataFailure,
    required TResult Function(LocalDataFailure<T> value) localDataFailure,
    required TResult Function(LocalData<T> value) localData,
  }) {
    return localDataFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkData<T> value)? networkData,
    TResult Function(NetworkDataFailure<T> value)? networkDataFailure,
    TResult Function(LocalDataFailure<T> value)? localDataFailure,
    TResult Function(LocalData<T> value)? localData,
  }) {
    return localDataFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkData<T> value)? networkData,
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
  const factory LocalDataFailure({required final LocalFailure localFailure}) =
      _$LocalDataFailure<T>;

  const LocalDataFailure._() : super._();

  LocalFailure get localFailure;

  @JsonKey(ignore: true)
  _$$LocalDataFailureCopyWith<T, _$LocalDataFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalDataCopyWith<T, $Res> {
  factory _$$LocalDataCopyWith(
          _$LocalData<T> value, $Res Function(_$LocalData<T>) then) =
      __$$LocalDataCopyWithImpl<T, $Res>;

  $Res call({T? data});
}

/// @nodoc
class __$$LocalDataCopyWithImpl<T, $Res>
    extends _$DataModelWrapperCopyWithImpl<T, $Res>
    implements _$$LocalDataCopyWith<T, $Res> {
  __$$LocalDataCopyWithImpl(
      _$LocalData<T> _value, $Res Function(_$LocalData<T>) _then)
      : super(_value, (v) => _then(v as _$LocalData<T>));

  @override
  _$LocalData<T> get _value => super._value as _$LocalData<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$LocalData<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$LocalData<T> extends LocalData<T> {
  const _$LocalData({this.data}) : super._();

  @override
  final T? data;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalData<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$LocalDataCopyWith<T, _$LocalData<T>> get copyWith =>
      __$$LocalDataCopyWithImpl<T, _$LocalData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) networkData,
    required TResult Function(NetworkFailure networkFailure) networkDataFailure,
    required TResult Function(LocalFailure localFailure) localDataFailure,
    required TResult Function(T? data) localData,
  }) {
    return localData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? data)? networkData,
    TResult Function(NetworkFailure networkFailure)? networkDataFailure,
    TResult Function(LocalFailure localFailure)? localDataFailure,
    TResult Function(T? data)? localData,
  }) {
    return localData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? networkData,
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
    required TResult Function(NetworkDataFailure<T> value) networkDataFailure,
    required TResult Function(LocalDataFailure<T> value) localDataFailure,
    required TResult Function(LocalData<T> value) localData,
  }) {
    return localData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkData<T> value)? networkData,
    TResult Function(NetworkDataFailure<T> value)? networkDataFailure,
    TResult Function(LocalDataFailure<T> value)? localDataFailure,
    TResult Function(LocalData<T> value)? localData,
  }) {
    return localData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkData<T> value)? networkData,
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
  const factory LocalData({final T? data}) = _$LocalData<T>;

  const LocalData._() : super._();

  T? get data;

  @JsonKey(ignore: true)
  _$$LocalDataCopyWith<T, _$LocalData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
