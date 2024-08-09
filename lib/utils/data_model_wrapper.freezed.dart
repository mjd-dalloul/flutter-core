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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
}

/// @nodoc
abstract class _$$NetworkDataCopyWith<T, $Res> {
  factory _$$NetworkDataCopyWith(
          _$NetworkData<T> value, $Res Function(_$NetworkData<T>) then) =
      __$$NetworkDataCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$$NetworkDataCopyWithImpl<T, $Res>
    extends _$DataModelWrapperCopyWithImpl<T, $Res, _$NetworkData<T>>
    implements _$$NetworkDataCopyWith<T, $Res> {
  __$$NetworkDataCopyWithImpl(
      _$NetworkData<T> _value, $Res Function(_$NetworkData<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$NetworkData<T>(
      data: freezed == data
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
  @pragma('vm:prefer-inline')
  _$$NetworkDataCopyWith<T, _$NetworkData<T>> get copyWith =>
      __$$NetworkDataCopyWithImpl<T, _$NetworkData<T>>(this, _$identity);

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
  const factory NetworkData({final T? data}) = _$NetworkData<T>;
  const NetworkData._() : super._();

  T? get data;
  @JsonKey(ignore: true)
  _$$NetworkDataCopyWith<T, _$NetworkData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyCopyWith<T, $Res> {
  factory _$$EmptyCopyWith(_$Empty<T> value, $Res Function(_$Empty<T>) then) =
      __$$EmptyCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$EmptyCopyWithImpl<T, $Res>
    extends _$DataModelWrapperCopyWithImpl<T, $Res, _$Empty<T>>
    implements _$$EmptyCopyWith<T, $Res> {
  __$$EmptyCopyWithImpl(_$Empty<T> _value, $Res Function(_$Empty<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Empty<T> extends Empty<T> {
  const _$Empty() : super._();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Empty<T>);
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
  const factory Empty() = _$Empty<T>;
  const Empty._() : super._();
}

/// @nodoc
abstract class _$$IsLoadingCopyWith<T, $Res> {
  factory _$$IsLoadingCopyWith(
          _$IsLoading<T> value, $Res Function(_$IsLoading<T>) then) =
      __$$IsLoadingCopyWithImpl<T, $Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$IsLoadingCopyWithImpl<T, $Res>
    extends _$DataModelWrapperCopyWithImpl<T, $Res, _$IsLoading<T>>
    implements _$$IsLoadingCopyWith<T, $Res> {
  __$$IsLoadingCopyWithImpl(
      _$IsLoading<T> _value, $Res Function(_$IsLoading<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$IsLoading<T>(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IsLoading<T> extends IsLoading<T> {
  const _$IsLoading({required this.isLoading}) : super._();

  @override
  final bool isLoading;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsLoading<T> &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsLoadingCopyWith<T, _$IsLoading<T>> get copyWith =>
      __$$IsLoadingCopyWithImpl<T, _$IsLoading<T>>(this, _$identity);

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
  const factory IsLoading({required final bool isLoading}) = _$IsLoading<T>;
  const IsLoading._() : super._();

  bool get isLoading;
  @JsonKey(ignore: true)
  _$$IsLoadingCopyWith<T, _$IsLoading<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkDataFailureCopyWith<T, $Res> {
  factory _$$NetworkDataFailureCopyWith(_$NetworkDataFailure<T> value,
          $Res Function(_$NetworkDataFailure<T>) then) =
      __$$NetworkDataFailureCopyWithImpl<T, $Res>;
  @useResult
  $Res call({NetworkFailure networkFailure});

  $NetworkFailureCopyWith<$Res> get networkFailure;
}

/// @nodoc
class __$$NetworkDataFailureCopyWithImpl<T, $Res>
    extends _$DataModelWrapperCopyWithImpl<T, $Res, _$NetworkDataFailure<T>>
    implements _$$NetworkDataFailureCopyWith<T, $Res> {
  __$$NetworkDataFailureCopyWithImpl(_$NetworkDataFailure<T> _value,
      $Res Function(_$NetworkDataFailure<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkFailure = null,
  }) {
    return _then(_$NetworkDataFailure<T>(
      networkFailure: null == networkFailure
          ? _value.networkFailure
          : networkFailure // ignore: cast_nullable_to_non_nullable
              as NetworkFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
            (identical(other.networkFailure, networkFailure) ||
                other.networkFailure == networkFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkDataFailureCopyWith<T, _$NetworkDataFailure<T>> get copyWith =>
      __$$NetworkDataFailureCopyWithImpl<T, _$NetworkDataFailure<T>>(
          this, _$identity);

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
  @useResult
  $Res call({LocalFailure localFailure});

  $LocalFailureCopyWith<$Res> get localFailure;
}

/// @nodoc
class __$$LocalDataFailureCopyWithImpl<T, $Res>
    extends _$DataModelWrapperCopyWithImpl<T, $Res, _$LocalDataFailure<T>>
    implements _$$LocalDataFailureCopyWith<T, $Res> {
  __$$LocalDataFailureCopyWithImpl(
      _$LocalDataFailure<T> _value, $Res Function(_$LocalDataFailure<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localFailure = null,
  }) {
    return _then(_$LocalDataFailure<T>(
      localFailure: null == localFailure
          ? _value.localFailure
          : localFailure // ignore: cast_nullable_to_non_nullable
              as LocalFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
            (identical(other.localFailure, localFailure) ||
                other.localFailure == localFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalDataFailureCopyWith<T, _$LocalDataFailure<T>> get copyWith =>
      __$$LocalDataFailureCopyWithImpl<T, _$LocalDataFailure<T>>(
          this, _$identity);

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
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$$LocalDataCopyWithImpl<T, $Res>
    extends _$DataModelWrapperCopyWithImpl<T, $Res, _$LocalData<T>>
    implements _$$LocalDataCopyWith<T, $Res> {
  __$$LocalDataCopyWithImpl(
      _$LocalData<T> _value, $Res Function(_$LocalData<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$LocalData<T>(
      data: freezed == data
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
  @pragma('vm:prefer-inline')
  _$$LocalDataCopyWith<T, _$LocalData<T>> get copyWith =>
      __$$LocalDataCopyWithImpl<T, _$LocalData<T>>(this, _$identity);

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
  const factory LocalData({final T? data}) = _$LocalData<T>;
  const LocalData._() : super._();

  T? get data;
  @JsonKey(ignore: true)
  _$$LocalDataCopyWith<T, _$LocalData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
