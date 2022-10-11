// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) requestCancelled,
    required TResult Function(String message) customFailure,
    required TResult Function(String? message) noInternetFailure,
    required TResult Function(String? message) unauthenticatedFailure,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? requestCancelled,
    TResult Function(String message)? customFailure,
    TResult Function(String? message)? noInternetFailure,
    TResult Function(String? message)? unauthenticatedFailure,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? requestCancelled,
    TResult Function(String message)? customFailure,
    TResult Function(String? message)? noInternetFailure,
    TResult Function(String? message)? unauthenticatedFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(CustomFailure value) customFailure,
    required TResult Function(NoInternetFailure value) noInternetFailure,
    required TResult Function(UnauthenticatedFailure value)
        unauthenticatedFailure,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(CustomFailure value)? customFailure,
    TResult Function(NoInternetFailure value)? noInternetFailure,
    TResult Function(UnauthenticatedFailure value)? unauthenticatedFailure,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(CustomFailure value)? customFailure,
    TResult Function(NoInternetFailure value)? noInternetFailure,
    TResult Function(UnauthenticatedFailure value)? unauthenticatedFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._value, this._then);

  final NetworkFailure _value;

  // ignore: unused_field
  final $Res Function(NetworkFailure) _then;
}

/// @nodoc
abstract class _$$ServerFailureCopyWith<$Res> {
  factory _$$ServerFailureCopyWith(
          _$ServerFailure value, $Res Function(_$ServerFailure) then) =
      __$$ServerFailureCopyWithImpl<$Res>;

  $Res call({String? message});
}

/// @nodoc
class __$$ServerFailureCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res>
    implements _$$ServerFailureCopyWith<$Res> {
  __$$ServerFailureCopyWithImpl(
      _$ServerFailure _value, $Res Function(_$ServerFailure) _then)
      : super(_value, (v) => _then(v as _$ServerFailure));

  @override
  _$ServerFailure get _value => super._value as _$ServerFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ServerFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerFailure extends ServerFailure {
  const _$ServerFailure([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'NetworkFailure.serverFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      __$$ServerFailureCopyWithImpl<_$ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) requestCancelled,
    required TResult Function(String message) customFailure,
    required TResult Function(String? message) noInternetFailure,
    required TResult Function(String? message) unauthenticatedFailure,
  }) {
    return serverFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? requestCancelled,
    TResult Function(String message)? customFailure,
    TResult Function(String? message)? noInternetFailure,
    TResult Function(String? message)? unauthenticatedFailure,
  }) {
    return serverFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? requestCancelled,
    TResult Function(String message)? customFailure,
    TResult Function(String? message)? noInternetFailure,
    TResult Function(String? message)? unauthenticatedFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(CustomFailure value) customFailure,
    required TResult Function(NoInternetFailure value) noInternetFailure,
    required TResult Function(UnauthenticatedFailure value)
        unauthenticatedFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(CustomFailure value)? customFailure,
    TResult Function(NoInternetFailure value)? noInternetFailure,
    TResult Function(UnauthenticatedFailure value)? unauthenticatedFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(CustomFailure value)? customFailure,
    TResult Function(NoInternetFailure value)? noInternetFailure,
    TResult Function(UnauthenticatedFailure value)? unauthenticatedFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure extends NetworkFailure {
  const factory ServerFailure([final String? message]) = _$ServerFailure;

  const ServerFailure._() : super._();

  String? get message;

  @JsonKey(ignore: true)
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestCancelledCopyWith<$Res> {
  factory _$$RequestCancelledCopyWith(
          _$RequestCancelled value, $Res Function(_$RequestCancelled) then) =
      __$$RequestCancelledCopyWithImpl<$Res>;

  $Res call({String? message});
}

/// @nodoc
class __$$RequestCancelledCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res>
    implements _$$RequestCancelledCopyWith<$Res> {
  __$$RequestCancelledCopyWithImpl(
      _$RequestCancelled _value, $Res Function(_$RequestCancelled) _then)
      : super(_value, (v) => _then(v as _$RequestCancelled));

  @override
  _$RequestCancelled get _value => super._value as _$RequestCancelled;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$RequestCancelled(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RequestCancelled extends RequestCancelled {
  const _$RequestCancelled([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'NetworkFailure.requestCancelled(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestCancelled &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$RequestCancelledCopyWith<_$RequestCancelled> get copyWith =>
      __$$RequestCancelledCopyWithImpl<_$RequestCancelled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) requestCancelled,
    required TResult Function(String message) customFailure,
    required TResult Function(String? message) noInternetFailure,
    required TResult Function(String? message) unauthenticatedFailure,
  }) {
    return requestCancelled(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? requestCancelled,
    TResult Function(String message)? customFailure,
    TResult Function(String? message)? noInternetFailure,
    TResult Function(String? message)? unauthenticatedFailure,
  }) {
    return requestCancelled?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? requestCancelled,
    TResult Function(String message)? customFailure,
    TResult Function(String? message)? noInternetFailure,
    TResult Function(String? message)? unauthenticatedFailure,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(CustomFailure value) customFailure,
    required TResult Function(NoInternetFailure value) noInternetFailure,
    required TResult Function(UnauthenticatedFailure value)
        unauthenticatedFailure,
  }) {
    return requestCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(CustomFailure value)? customFailure,
    TResult Function(NoInternetFailure value)? noInternetFailure,
    TResult Function(UnauthenticatedFailure value)? unauthenticatedFailure,
  }) {
    return requestCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(CustomFailure value)? customFailure,
    TResult Function(NoInternetFailure value)? noInternetFailure,
    TResult Function(UnauthenticatedFailure value)? unauthenticatedFailure,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled(this);
    }
    return orElse();
  }
}

abstract class RequestCancelled extends NetworkFailure {
  const factory RequestCancelled([final String? message]) = _$RequestCancelled;

  const RequestCancelled._() : super._();

  String? get message;

  @JsonKey(ignore: true)
  _$$RequestCancelledCopyWith<_$RequestCancelled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomFailureCopyWith<$Res> {
  factory _$$CustomFailureCopyWith(
          _$CustomFailure value, $Res Function(_$CustomFailure) then) =
      __$$CustomFailureCopyWithImpl<$Res>;

  $Res call({String message});
}

/// @nodoc
class __$$CustomFailureCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res>
    implements _$$CustomFailureCopyWith<$Res> {
  __$$CustomFailureCopyWithImpl(
      _$CustomFailure _value, $Res Function(_$CustomFailure) _then)
      : super(_value, (v) => _then(v as _$CustomFailure));

  @override
  _$CustomFailure get _value => super._value as _$CustomFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$CustomFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CustomFailure extends CustomFailure {
  const _$CustomFailure(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkFailure.customFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$CustomFailureCopyWith<_$CustomFailure> get copyWith =>
      __$$CustomFailureCopyWithImpl<_$CustomFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) requestCancelled,
    required TResult Function(String message) customFailure,
    required TResult Function(String? message) noInternetFailure,
    required TResult Function(String? message) unauthenticatedFailure,
  }) {
    return customFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? requestCancelled,
    TResult Function(String message)? customFailure,
    TResult Function(String? message)? noInternetFailure,
    TResult Function(String? message)? unauthenticatedFailure,
  }) {
    return customFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? requestCancelled,
    TResult Function(String message)? customFailure,
    TResult Function(String? message)? noInternetFailure,
    TResult Function(String? message)? unauthenticatedFailure,
    required TResult orElse(),
  }) {
    if (customFailure != null) {
      return customFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(CustomFailure value) customFailure,
    required TResult Function(NoInternetFailure value) noInternetFailure,
    required TResult Function(UnauthenticatedFailure value)
        unauthenticatedFailure,
  }) {
    return customFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(CustomFailure value)? customFailure,
    TResult Function(NoInternetFailure value)? noInternetFailure,
    TResult Function(UnauthenticatedFailure value)? unauthenticatedFailure,
  }) {
    return customFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(CustomFailure value)? customFailure,
    TResult Function(NoInternetFailure value)? noInternetFailure,
    TResult Function(UnauthenticatedFailure value)? unauthenticatedFailure,
    required TResult orElse(),
  }) {
    if (customFailure != null) {
      return customFailure(this);
    }
    return orElse();
  }
}

abstract class CustomFailure extends NetworkFailure {
  const factory CustomFailure(final String message) = _$CustomFailure;

  const CustomFailure._() : super._();

  String get message;

  @JsonKey(ignore: true)
  _$$CustomFailureCopyWith<_$CustomFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoInternetFailureCopyWith<$Res> {
  factory _$$NoInternetFailureCopyWith(
          _$NoInternetFailure value, $Res Function(_$NoInternetFailure) then) =
      __$$NoInternetFailureCopyWithImpl<$Res>;

  $Res call({String? message});
}

/// @nodoc
class __$$NoInternetFailureCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res>
    implements _$$NoInternetFailureCopyWith<$Res> {
  __$$NoInternetFailureCopyWithImpl(
      _$NoInternetFailure _value, $Res Function(_$NoInternetFailure) _then)
      : super(_value, (v) => _then(v as _$NoInternetFailure));

  @override
  _$NoInternetFailure get _value => super._value as _$NoInternetFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NoInternetFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NoInternetFailure extends NoInternetFailure {
  const _$NoInternetFailure([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'NetworkFailure.noInternetFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoInternetFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$NoInternetFailureCopyWith<_$NoInternetFailure> get copyWith =>
      __$$NoInternetFailureCopyWithImpl<_$NoInternetFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) requestCancelled,
    required TResult Function(String message) customFailure,
    required TResult Function(String? message) noInternetFailure,
    required TResult Function(String? message) unauthenticatedFailure,
  }) {
    return noInternetFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? requestCancelled,
    TResult Function(String message)? customFailure,
    TResult Function(String? message)? noInternetFailure,
    TResult Function(String? message)? unauthenticatedFailure,
  }) {
    return noInternetFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? requestCancelled,
    TResult Function(String message)? customFailure,
    TResult Function(String? message)? noInternetFailure,
    TResult Function(String? message)? unauthenticatedFailure,
    required TResult orElse(),
  }) {
    if (noInternetFailure != null) {
      return noInternetFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(CustomFailure value) customFailure,
    required TResult Function(NoInternetFailure value) noInternetFailure,
    required TResult Function(UnauthenticatedFailure value)
        unauthenticatedFailure,
  }) {
    return noInternetFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(CustomFailure value)? customFailure,
    TResult Function(NoInternetFailure value)? noInternetFailure,
    TResult Function(UnauthenticatedFailure value)? unauthenticatedFailure,
  }) {
    return noInternetFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(CustomFailure value)? customFailure,
    TResult Function(NoInternetFailure value)? noInternetFailure,
    TResult Function(UnauthenticatedFailure value)? unauthenticatedFailure,
    required TResult orElse(),
  }) {
    if (noInternetFailure != null) {
      return noInternetFailure(this);
    }
    return orElse();
  }
}

abstract class NoInternetFailure extends NetworkFailure {
  const factory NoInternetFailure([final String? message]) =
      _$NoInternetFailure;

  const NoInternetFailure._() : super._();

  String? get message;

  @JsonKey(ignore: true)
  _$$NoInternetFailureCopyWith<_$NoInternetFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthenticatedFailureCopyWith<$Res> {
  factory _$$UnauthenticatedFailureCopyWith(_$UnauthenticatedFailure value,
          $Res Function(_$UnauthenticatedFailure) then) =
      __$$UnauthenticatedFailureCopyWithImpl<$Res>;

  $Res call({String? message});
}

/// @nodoc
class __$$UnauthenticatedFailureCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res>
    implements _$$UnauthenticatedFailureCopyWith<$Res> {
  __$$UnauthenticatedFailureCopyWithImpl(_$UnauthenticatedFailure _value,
      $Res Function(_$UnauthenticatedFailure) _then)
      : super(_value, (v) => _then(v as _$UnauthenticatedFailure));

  @override
  _$UnauthenticatedFailure get _value =>
      super._value as _$UnauthenticatedFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UnauthenticatedFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnauthenticatedFailure extends UnauthenticatedFailure {
  const _$UnauthenticatedFailure([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'NetworkFailure.unauthenticatedFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthenticatedFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$UnauthenticatedFailureCopyWith<_$UnauthenticatedFailure> get copyWith =>
      __$$UnauthenticatedFailureCopyWithImpl<_$UnauthenticatedFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) requestCancelled,
    required TResult Function(String message) customFailure,
    required TResult Function(String? message) noInternetFailure,
    required TResult Function(String? message) unauthenticatedFailure,
  }) {
    return unauthenticatedFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? requestCancelled,
    TResult Function(String message)? customFailure,
    TResult Function(String? message)? noInternetFailure,
    TResult Function(String? message)? unauthenticatedFailure,
  }) {
    return unauthenticatedFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? requestCancelled,
    TResult Function(String message)? customFailure,
    TResult Function(String? message)? noInternetFailure,
    TResult Function(String? message)? unauthenticatedFailure,
    required TResult orElse(),
  }) {
    if (unauthenticatedFailure != null) {
      return unauthenticatedFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(CustomFailure value) customFailure,
    required TResult Function(NoInternetFailure value) noInternetFailure,
    required TResult Function(UnauthenticatedFailure value)
        unauthenticatedFailure,
  }) {
    return unauthenticatedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(CustomFailure value)? customFailure,
    TResult Function(NoInternetFailure value)? noInternetFailure,
    TResult Function(UnauthenticatedFailure value)? unauthenticatedFailure,
  }) {
    return unauthenticatedFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(CustomFailure value)? customFailure,
    TResult Function(NoInternetFailure value)? noInternetFailure,
    TResult Function(UnauthenticatedFailure value)? unauthenticatedFailure,
    required TResult orElse(),
  }) {
    if (unauthenticatedFailure != null) {
      return unauthenticatedFailure(this);
    }
    return orElse();
  }
}

abstract class UnauthenticatedFailure extends NetworkFailure {
  const factory UnauthenticatedFailure([final String? message]) =
      _$UnauthenticatedFailure;

  const UnauthenticatedFailure._() : super._();

  String? get message;

  @JsonKey(ignore: true)
  _$$UnauthenticatedFailureCopyWith<_$UnauthenticatedFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
