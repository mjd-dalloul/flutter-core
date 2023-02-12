// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
    required TResult Function(String? message, dynamic failure) serverFailure,
    required TResult Function(String? message, dynamic failure)
        requestCancelled,
    required TResult Function(String message, dynamic failure) customFailure,
    required TResult Function(String? message, dynamic failure)
        noInternetFailure,
    required TResult Function(String? message, dynamic failure)
        unauthenticatedFailure,
    required TResult Function(dynamic error) unknownError,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, dynamic failure)? serverFailure,
    TResult? Function(String? message, dynamic failure)? requestCancelled,
    TResult? Function(String message, dynamic failure)? customFailure,
    TResult? Function(String? message, dynamic failure)? noInternetFailure,
    TResult? Function(String? message, dynamic failure)? unauthenticatedFailure,
    TResult? Function(dynamic error)? unknownError,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, dynamic failure)? serverFailure,
    TResult Function(String? message, dynamic failure)? requestCancelled,
    TResult Function(String message, dynamic failure)? customFailure,
    TResult Function(String? message, dynamic failure)? noInternetFailure,
    TResult Function(String? message, dynamic failure)? unauthenticatedFailure,
    TResult Function(dynamic error)? unknownError,
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
    required TResult Function(UnknownError value) unknownError,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(RequestCancelled value)? requestCancelled,
    TResult? Function(CustomFailure value)? customFailure,
    TResult? Function(NoInternetFailure value)? noInternetFailure,
    TResult? Function(UnauthenticatedFailure value)? unauthenticatedFailure,
    TResult? Function(UnknownError value)? unknownError,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(CustomFailure value)? customFailure,
    TResult Function(NoInternetFailure value)? noInternetFailure,
    TResult Function(UnauthenticatedFailure value)? unauthenticatedFailure,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res, NetworkFailure>;
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res, $Val extends NetworkFailure>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerFailureCopyWith<$Res> {
  factory _$$ServerFailureCopyWith(
          _$ServerFailure value, $Res Function(_$ServerFailure) then) =
      __$$ServerFailureCopyWithImpl<$Res>;

  @useResult
  $Res call({String? message, dynamic failure});
}

/// @nodoc
class __$$ServerFailureCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$ServerFailure>
    implements _$$ServerFailureCopyWith<$Res> {
  __$$ServerFailureCopyWithImpl(
      _$ServerFailure _value, $Res Function(_$ServerFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$ServerFailure(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ServerFailure extends ServerFailure {
  const _$ServerFailure([this.message, this.failure]) : super._();

  @override
  final String? message;
  @override
  final dynamic failure;

  @override
  String toString() {
    return 'NetworkFailure.serverFailure(message: $message, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailure &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      __$$ServerFailureCopyWithImpl<_$ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, dynamic failure) serverFailure,
    required TResult Function(String? message, dynamic failure)
        requestCancelled,
    required TResult Function(String message, dynamic failure) customFailure,
    required TResult Function(String? message, dynamic failure)
        noInternetFailure,
    required TResult Function(String? message, dynamic failure)
        unauthenticatedFailure,
    required TResult Function(dynamic error) unknownError,
  }) {
    return serverFailure(message, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, dynamic failure)? serverFailure,
    TResult? Function(String? message, dynamic failure)? requestCancelled,
    TResult? Function(String message, dynamic failure)? customFailure,
    TResult? Function(String? message, dynamic failure)? noInternetFailure,
    TResult? Function(String? message, dynamic failure)? unauthenticatedFailure,
    TResult? Function(dynamic error)? unknownError,
  }) {
    return serverFailure?.call(message, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, dynamic failure)? serverFailure,
    TResult Function(String? message, dynamic failure)? requestCancelled,
    TResult Function(String message, dynamic failure)? customFailure,
    TResult Function(String? message, dynamic failure)? noInternetFailure,
    TResult Function(String? message, dynamic failure)? unauthenticatedFailure,
    TResult Function(dynamic error)? unknownError,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(message, failure);
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
    required TResult Function(UnknownError value) unknownError,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(RequestCancelled value)? requestCancelled,
    TResult? Function(CustomFailure value)? customFailure,
    TResult? Function(NoInternetFailure value)? noInternetFailure,
    TResult? Function(UnauthenticatedFailure value)? unauthenticatedFailure,
    TResult? Function(UnknownError value)? unknownError,
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
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure extends NetworkFailure {
  const factory ServerFailure([final String? message, final dynamic failure]) =
      _$ServerFailure;

  const ServerFailure._() : super._();

  String? get message;

  dynamic get failure;

  @JsonKey(ignore: true)
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestCancelledCopyWith<$Res> {
  factory _$$RequestCancelledCopyWith(
          _$RequestCancelled value, $Res Function(_$RequestCancelled) then) =
      __$$RequestCancelledCopyWithImpl<$Res>;

  @useResult
  $Res call({String? message, dynamic failure});
}

/// @nodoc
class __$$RequestCancelledCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$RequestCancelled>
    implements _$$RequestCancelledCopyWith<$Res> {
  __$$RequestCancelledCopyWithImpl(
      _$RequestCancelled _value, $Res Function(_$RequestCancelled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$RequestCancelled(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$RequestCancelled extends RequestCancelled {
  const _$RequestCancelled([this.message, this.failure]) : super._();

  @override
  final String? message;
  @override
  final dynamic failure;

  @override
  String toString() {
    return 'NetworkFailure.requestCancelled(message: $message, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestCancelled &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCancelledCopyWith<_$RequestCancelled> get copyWith =>
      __$$RequestCancelledCopyWithImpl<_$RequestCancelled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, dynamic failure) serverFailure,
    required TResult Function(String? message, dynamic failure)
        requestCancelled,
    required TResult Function(String message, dynamic failure) customFailure,
    required TResult Function(String? message, dynamic failure)
        noInternetFailure,
    required TResult Function(String? message, dynamic failure)
        unauthenticatedFailure,
    required TResult Function(dynamic error) unknownError,
  }) {
    return requestCancelled(message, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, dynamic failure)? serverFailure,
    TResult? Function(String? message, dynamic failure)? requestCancelled,
    TResult? Function(String message, dynamic failure)? customFailure,
    TResult? Function(String? message, dynamic failure)? noInternetFailure,
    TResult? Function(String? message, dynamic failure)? unauthenticatedFailure,
    TResult? Function(dynamic error)? unknownError,
  }) {
    return requestCancelled?.call(message, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, dynamic failure)? serverFailure,
    TResult Function(String? message, dynamic failure)? requestCancelled,
    TResult Function(String message, dynamic failure)? customFailure,
    TResult Function(String? message, dynamic failure)? noInternetFailure,
    TResult Function(String? message, dynamic failure)? unauthenticatedFailure,
    TResult Function(dynamic error)? unknownError,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled(message, failure);
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
    required TResult Function(UnknownError value) unknownError,
  }) {
    return requestCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(RequestCancelled value)? requestCancelled,
    TResult? Function(CustomFailure value)? customFailure,
    TResult? Function(NoInternetFailure value)? noInternetFailure,
    TResult? Function(UnauthenticatedFailure value)? unauthenticatedFailure,
    TResult? Function(UnknownError value)? unknownError,
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
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled(this);
    }
    return orElse();
  }
}

abstract class RequestCancelled extends NetworkFailure {
  const factory RequestCancelled(
      [final String? message, final dynamic failure]) = _$RequestCancelled;

  const RequestCancelled._() : super._();

  String? get message;

  dynamic get failure;

  @JsonKey(ignore: true)
  _$$RequestCancelledCopyWith<_$RequestCancelled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomFailureCopyWith<$Res> {
  factory _$$CustomFailureCopyWith(
          _$CustomFailure value, $Res Function(_$CustomFailure) then) =
      __$$CustomFailureCopyWithImpl<$Res>;

  @useResult
  $Res call({String message, dynamic failure});
}

/// @nodoc
class __$$CustomFailureCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$CustomFailure>
    implements _$$CustomFailureCopyWith<$Res> {
  __$$CustomFailureCopyWithImpl(
      _$CustomFailure _value, $Res Function(_$CustomFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? failure = freezed,
  }) {
    return _then(_$CustomFailure(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$CustomFailure extends CustomFailure {
  const _$CustomFailure(this.message, [this.failure]) : super._();

  @override
  final String message;
  @override
  final dynamic failure;

  @override
  String toString() {
    return 'NetworkFailure.customFailure(message: $message, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomFailure &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomFailureCopyWith<_$CustomFailure> get copyWith =>
      __$$CustomFailureCopyWithImpl<_$CustomFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, dynamic failure) serverFailure,
    required TResult Function(String? message, dynamic failure)
        requestCancelled,
    required TResult Function(String message, dynamic failure) customFailure,
    required TResult Function(String? message, dynamic failure)
        noInternetFailure,
    required TResult Function(String? message, dynamic failure)
        unauthenticatedFailure,
    required TResult Function(dynamic error) unknownError,
  }) {
    return customFailure(message, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, dynamic failure)? serverFailure,
    TResult? Function(String? message, dynamic failure)? requestCancelled,
    TResult? Function(String message, dynamic failure)? customFailure,
    TResult? Function(String? message, dynamic failure)? noInternetFailure,
    TResult? Function(String? message, dynamic failure)? unauthenticatedFailure,
    TResult? Function(dynamic error)? unknownError,
  }) {
    return customFailure?.call(message, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, dynamic failure)? serverFailure,
    TResult Function(String? message, dynamic failure)? requestCancelled,
    TResult Function(String message, dynamic failure)? customFailure,
    TResult Function(String? message, dynamic failure)? noInternetFailure,
    TResult Function(String? message, dynamic failure)? unauthenticatedFailure,
    TResult Function(dynamic error)? unknownError,
    required TResult orElse(),
  }) {
    if (customFailure != null) {
      return customFailure(message, failure);
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
    required TResult Function(UnknownError value) unknownError,
  }) {
    return customFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(RequestCancelled value)? requestCancelled,
    TResult? Function(CustomFailure value)? customFailure,
    TResult? Function(NoInternetFailure value)? noInternetFailure,
    TResult? Function(UnauthenticatedFailure value)? unauthenticatedFailure,
    TResult? Function(UnknownError value)? unknownError,
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
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (customFailure != null) {
      return customFailure(this);
    }
    return orElse();
  }
}

abstract class CustomFailure extends NetworkFailure {
  const factory CustomFailure(final String message, [final dynamic failure]) =
      _$CustomFailure;

  const CustomFailure._() : super._();

  String get message;

  dynamic get failure;

  @JsonKey(ignore: true)
  _$$CustomFailureCopyWith<_$CustomFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoInternetFailureCopyWith<$Res> {
  factory _$$NoInternetFailureCopyWith(
          _$NoInternetFailure value, $Res Function(_$NoInternetFailure) then) =
      __$$NoInternetFailureCopyWithImpl<$Res>;

  @useResult
  $Res call({String? message, dynamic failure});
}

/// @nodoc
class __$$NoInternetFailureCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$NoInternetFailure>
    implements _$$NoInternetFailureCopyWith<$Res> {
  __$$NoInternetFailureCopyWithImpl(
      _$NoInternetFailure _value, $Res Function(_$NoInternetFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$NoInternetFailure(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$NoInternetFailure extends NoInternetFailure {
  const _$NoInternetFailure([this.message, this.failure]) : super._();

  @override
  final String? message;
  @override
  final dynamic failure;

  @override
  String toString() {
    return 'NetworkFailure.noInternetFailure(message: $message, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoInternetFailure &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoInternetFailureCopyWith<_$NoInternetFailure> get copyWith =>
      __$$NoInternetFailureCopyWithImpl<_$NoInternetFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, dynamic failure) serverFailure,
    required TResult Function(String? message, dynamic failure)
        requestCancelled,
    required TResult Function(String message, dynamic failure) customFailure,
    required TResult Function(String? message, dynamic failure)
        noInternetFailure,
    required TResult Function(String? message, dynamic failure)
        unauthenticatedFailure,
    required TResult Function(dynamic error) unknownError,
  }) {
    return noInternetFailure(message, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, dynamic failure)? serverFailure,
    TResult? Function(String? message, dynamic failure)? requestCancelled,
    TResult? Function(String message, dynamic failure)? customFailure,
    TResult? Function(String? message, dynamic failure)? noInternetFailure,
    TResult? Function(String? message, dynamic failure)? unauthenticatedFailure,
    TResult? Function(dynamic error)? unknownError,
  }) {
    return noInternetFailure?.call(message, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, dynamic failure)? serverFailure,
    TResult Function(String? message, dynamic failure)? requestCancelled,
    TResult Function(String message, dynamic failure)? customFailure,
    TResult Function(String? message, dynamic failure)? noInternetFailure,
    TResult Function(String? message, dynamic failure)? unauthenticatedFailure,
    TResult Function(dynamic error)? unknownError,
    required TResult orElse(),
  }) {
    if (noInternetFailure != null) {
      return noInternetFailure(message, failure);
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
    required TResult Function(UnknownError value) unknownError,
  }) {
    return noInternetFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(RequestCancelled value)? requestCancelled,
    TResult? Function(CustomFailure value)? customFailure,
    TResult? Function(NoInternetFailure value)? noInternetFailure,
    TResult? Function(UnauthenticatedFailure value)? unauthenticatedFailure,
    TResult? Function(UnknownError value)? unknownError,
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
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (noInternetFailure != null) {
      return noInternetFailure(this);
    }
    return orElse();
  }
}

abstract class NoInternetFailure extends NetworkFailure {
  const factory NoInternetFailure(
      [final String? message, final dynamic failure]) = _$NoInternetFailure;

  const NoInternetFailure._() : super._();

  String? get message;

  dynamic get failure;

  @JsonKey(ignore: true)
  _$$NoInternetFailureCopyWith<_$NoInternetFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthenticatedFailureCopyWith<$Res> {
  factory _$$UnauthenticatedFailureCopyWith(_$UnauthenticatedFailure value,
          $Res Function(_$UnauthenticatedFailure) then) =
      __$$UnauthenticatedFailureCopyWithImpl<$Res>;

  @useResult
  $Res call({String? message, dynamic failure});
}

/// @nodoc
class __$$UnauthenticatedFailureCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$UnauthenticatedFailure>
    implements _$$UnauthenticatedFailureCopyWith<$Res> {
  __$$UnauthenticatedFailureCopyWithImpl(_$UnauthenticatedFailure _value,
      $Res Function(_$UnauthenticatedFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$UnauthenticatedFailure(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$UnauthenticatedFailure extends UnauthenticatedFailure {
  const _$UnauthenticatedFailure([this.message, this.failure]) : super._();

  @override
  final String? message;
  @override
  final dynamic failure;

  @override
  String toString() {
    return 'NetworkFailure.unauthenticatedFailure(message: $message, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthenticatedFailure &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthenticatedFailureCopyWith<_$UnauthenticatedFailure> get copyWith =>
      __$$UnauthenticatedFailureCopyWithImpl<_$UnauthenticatedFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, dynamic failure) serverFailure,
    required TResult Function(String? message, dynamic failure)
        requestCancelled,
    required TResult Function(String message, dynamic failure) customFailure,
    required TResult Function(String? message, dynamic failure)
        noInternetFailure,
    required TResult Function(String? message, dynamic failure)
        unauthenticatedFailure,
    required TResult Function(dynamic error) unknownError,
  }) {
    return unauthenticatedFailure(message, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, dynamic failure)? serverFailure,
    TResult? Function(String? message, dynamic failure)? requestCancelled,
    TResult? Function(String message, dynamic failure)? customFailure,
    TResult? Function(String? message, dynamic failure)? noInternetFailure,
    TResult? Function(String? message, dynamic failure)? unauthenticatedFailure,
    TResult? Function(dynamic error)? unknownError,
  }) {
    return unauthenticatedFailure?.call(message, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, dynamic failure)? serverFailure,
    TResult Function(String? message, dynamic failure)? requestCancelled,
    TResult Function(String message, dynamic failure)? customFailure,
    TResult Function(String? message, dynamic failure)? noInternetFailure,
    TResult Function(String? message, dynamic failure)? unauthenticatedFailure,
    TResult Function(dynamic error)? unknownError,
    required TResult orElse(),
  }) {
    if (unauthenticatedFailure != null) {
      return unauthenticatedFailure(message, failure);
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
    required TResult Function(UnknownError value) unknownError,
  }) {
    return unauthenticatedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(RequestCancelled value)? requestCancelled,
    TResult? Function(CustomFailure value)? customFailure,
    TResult? Function(NoInternetFailure value)? noInternetFailure,
    TResult? Function(UnauthenticatedFailure value)? unauthenticatedFailure,
    TResult? Function(UnknownError value)? unknownError,
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
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (unauthenticatedFailure != null) {
      return unauthenticatedFailure(this);
    }
    return orElse();
  }
}

abstract class UnauthenticatedFailure extends NetworkFailure {
  const factory UnauthenticatedFailure(
      [final String? message,
      final dynamic failure]) = _$UnauthenticatedFailure;

  const UnauthenticatedFailure._() : super._();

  String? get message;

  dynamic get failure;

  @JsonKey(ignore: true)
  _$$UnauthenticatedFailureCopyWith<_$UnauthenticatedFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownErrorCopyWith<$Res> {
  factory _$$UnknownErrorCopyWith(
          _$UnknownError value, $Res Function(_$UnknownError) then) =
      __$$UnknownErrorCopyWithImpl<$Res>;

  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$UnknownErrorCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$UnknownError>
    implements _$$UnknownErrorCopyWith<$Res> {
  __$$UnknownErrorCopyWithImpl(
      _$UnknownError _value, $Res Function(_$UnknownError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$UnknownError(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$UnknownError extends UnknownError {
  const _$UnknownError(this.error) : super._();

  @override
  final dynamic error;

  @override
  String toString() {
    return 'NetworkFailure.unknownError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownErrorCopyWith<_$UnknownError> get copyWith =>
      __$$UnknownErrorCopyWithImpl<_$UnknownError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, dynamic failure) serverFailure,
    required TResult Function(String? message, dynamic failure)
        requestCancelled,
    required TResult Function(String message, dynamic failure) customFailure,
    required TResult Function(String? message, dynamic failure)
        noInternetFailure,
    required TResult Function(String? message, dynamic failure)
        unauthenticatedFailure,
    required TResult Function(dynamic error) unknownError,
  }) {
    return unknownError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, dynamic failure)? serverFailure,
    TResult? Function(String? message, dynamic failure)? requestCancelled,
    TResult? Function(String message, dynamic failure)? customFailure,
    TResult? Function(String? message, dynamic failure)? noInternetFailure,
    TResult? Function(String? message, dynamic failure)? unauthenticatedFailure,
    TResult? Function(dynamic error)? unknownError,
  }) {
    return unknownError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, dynamic failure)? serverFailure,
    TResult Function(String? message, dynamic failure)? requestCancelled,
    TResult Function(String message, dynamic failure)? customFailure,
    TResult Function(String? message, dynamic failure)? noInternetFailure,
    TResult Function(String? message, dynamic failure)? unauthenticatedFailure,
    TResult Function(dynamic error)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(error);
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
    required TResult Function(UnknownError value) unknownError,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(RequestCancelled value)? requestCancelled,
    TResult? Function(CustomFailure value)? customFailure,
    TResult? Function(NoInternetFailure value)? noInternetFailure,
    TResult? Function(UnauthenticatedFailure value)? unauthenticatedFailure,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(CustomFailure value)? customFailure,
    TResult Function(NoInternetFailure value)? noInternetFailure,
    TResult Function(UnauthenticatedFailure value)? unauthenticatedFailure,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class UnknownError extends NetworkFailure {
  const factory UnknownError(final dynamic error) = _$UnknownError;

  const UnknownError._() : super._();

  dynamic get error;

  @JsonKey(ignore: true)
  _$$UnknownErrorCopyWith<_$UnknownError> get copyWith =>
      throw _privateConstructorUsedError;
}
