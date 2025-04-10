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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NetworkFailure {
  dynamic get failure => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, dynamic failure) serverFailure,
    required TResult Function(String? message, dynamic failure) requestCancelled,
    required TResult Function(String message, dynamic failure) customFailure,
    required TResult Function(String? message, dynamic failure)
        noInternetFailure,
    required TResult Function(String? message, dynamic failure)
        unauthenticatedFailure,
    required TResult Function(dynamic error, dynamic failure) unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, dynamic failure)? serverFailure,
    TResult? Function(String? message, dynamic failure)? requestCancelled,
    TResult? Function(String message, dynamic failure)? customFailure,
    TResult? Function(String? message, dynamic failure)? noInternetFailure,
    TResult? Function(String? message, dynamic failure)? unauthenticatedFailure,
    TResult? Function(dynamic error, dynamic failure)? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, dynamic failure)? serverFailure,
    TResult Function(String? message, dynamic failure)? requestCancelled,
    TResult Function(String message, dynamic failure)? customFailure,
    TResult Function(String? message, dynamic failure)? noInternetFailure,
    TResult Function(String? message, dynamic failure)? unauthenticatedFailure,
    TResult Function(dynamic error, dynamic failure)? unknownError,
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

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NetworkFailureCopyWith<NetworkFailure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res, NetworkFailure>;
  @useResult
  $Res call({dynamic failure});
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res, $Val extends NetworkFailure>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(_$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, dynamic failure});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res> extends _$NetworkFailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(_$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$ServerFailureImpl(
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

class _$ServerFailureImpl extends ServerFailure {
  const _$ServerFailureImpl([this.message, this.failure]) : super._();

  @override
  final String? message;
  @override
  final dynamic failure;

  @override
  String toString() {
    return 'NetworkFailure.serverFailure(message: $message, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, const DeepCollectionEquality().hash(failure));

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, dynamic failure) serverFailure,
    required TResult Function(String? message, dynamic failure) requestCancelled,
    required TResult Function(String message, dynamic failure) customFailure,
    required TResult Function(String? message, dynamic failure) noInternetFailure,
    required TResult Function(String? message, dynamic failure)
        unauthenticatedFailure,
    required TResult Function(dynamic error, dynamic failure) unknownError,
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
    TResult? Function(dynamic error, dynamic failure)? unknownError,
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
    TResult Function(dynamic error, dynamic failure)? unknownError,
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
  const factory ServerFailure([final String? message, final dynamic failure]) = _$ServerFailureImpl;
  const ServerFailure._() : super._();

  String? get message;
  @override
  dynamic get failure;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestCancelledImplCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
  factory _$$RequestCancelledImplCopyWith(_$RequestCancelledImpl value, $Res Function(_$RequestCancelledImpl) then) =
      __$$RequestCancelledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, dynamic failure});
}

/// @nodoc
class __$$RequestCancelledImplCopyWithImpl<$Res> extends _$NetworkFailureCopyWithImpl<$Res, _$RequestCancelledImpl>
    implements _$$RequestCancelledImplCopyWith<$Res> {
  __$$RequestCancelledImplCopyWithImpl(_$RequestCancelledImpl _value, $Res Function(_$RequestCancelledImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$RequestCancelledImpl(
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

class _$RequestCancelledImpl extends RequestCancelled {
  const _$RequestCancelledImpl([this.message, this.failure]) : super._();

  @override
  final String? message;
  @override
  final dynamic failure;

  @override
  String toString() {
    return 'NetworkFailure.requestCancelled(message: $message, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestCancelledImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, const DeepCollectionEquality().hash(failure));

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCancelledImplCopyWith<_$RequestCancelledImpl> get copyWith =>
      __$$RequestCancelledImplCopyWithImpl<_$RequestCancelledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, dynamic failure) serverFailure,
    required TResult Function(String? message, dynamic failure) requestCancelled,
    required TResult Function(String message, dynamic failure) customFailure,
    required TResult Function(String? message, dynamic failure) noInternetFailure,
    required TResult Function(String? message, dynamic failure)
        unauthenticatedFailure,
    required TResult Function(dynamic error, dynamic failure) unknownError,
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
    TResult? Function(dynamic error, dynamic failure)? unknownError,
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
    TResult Function(dynamic error, dynamic failure)? unknownError,
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
  const factory RequestCancelled([final String? message, final dynamic failure]) = _$RequestCancelledImpl;
  const RequestCancelled._() : super._();

  String? get message;
  @override
  dynamic get failure;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestCancelledImplCopyWith<_$RequestCancelledImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomFailureImplCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
  factory _$$CustomFailureImplCopyWith(_$CustomFailureImpl value, $Res Function(_$CustomFailureImpl) then) =
      __$$CustomFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, dynamic failure});
}

/// @nodoc
class __$$CustomFailureImplCopyWithImpl<$Res> extends _$NetworkFailureCopyWithImpl<$Res, _$CustomFailureImpl>
    implements _$$CustomFailureImplCopyWith<$Res> {
  __$$CustomFailureImplCopyWithImpl(_$CustomFailureImpl _value, $Res Function(_$CustomFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? failure = freezed,
  }) {
    return _then(_$CustomFailureImpl(
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

class _$CustomFailureImpl extends CustomFailure {
  const _$CustomFailureImpl(this.message, [this.failure]) : super._();

  @override
  final String message;
  @override
  final dynamic failure;

  @override
  String toString() {
    return 'NetworkFailure.customFailure(message: $message, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, const DeepCollectionEquality().hash(failure));

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomFailureImplCopyWith<_$CustomFailureImpl> get copyWith =>
      __$$CustomFailureImplCopyWithImpl<_$CustomFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, dynamic failure) serverFailure,
    required TResult Function(String? message, dynamic failure) requestCancelled,
    required TResult Function(String message, dynamic failure) customFailure,
    required TResult Function(String? message, dynamic failure) noInternetFailure,
    required TResult Function(String? message, dynamic failure)
        unauthenticatedFailure,
    required TResult Function(dynamic error, dynamic failure) unknownError,
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
    TResult? Function(dynamic error, dynamic failure)? unknownError,
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
    TResult Function(dynamic error, dynamic failure)? unknownError,
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
  const factory CustomFailure(final String message, [final dynamic failure]) = _$CustomFailureImpl;
  const CustomFailure._() : super._();

  String get message;
  @override
  dynamic get failure;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomFailureImplCopyWith<_$CustomFailureImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoInternetFailureImplCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
  factory _$$NoInternetFailureImplCopyWith(_$NoInternetFailureImpl value, $Res Function(_$NoInternetFailureImpl) then) =
      __$$NoInternetFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, dynamic failure});
}

/// @nodoc
class __$$NoInternetFailureImplCopyWithImpl<$Res> extends _$NetworkFailureCopyWithImpl<$Res, _$NoInternetFailureImpl>
    implements _$$NoInternetFailureImplCopyWith<$Res> {
  __$$NoInternetFailureImplCopyWithImpl(_$NoInternetFailureImpl _value, $Res Function(_$NoInternetFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$NoInternetFailureImpl(
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

class _$NoInternetFailureImpl extends NoInternetFailure {
  const _$NoInternetFailureImpl([this.message, this.failure]) : super._();

  @override
  final String? message;
  @override
  final dynamic failure;

  @override
  String toString() {
    return 'NetworkFailure.noInternetFailure(message: $message, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoInternetFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, const DeepCollectionEquality().hash(failure));

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoInternetFailureImplCopyWith<_$NoInternetFailureImpl> get copyWith =>
      __$$NoInternetFailureImplCopyWithImpl<_$NoInternetFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, dynamic failure) serverFailure,
    required TResult Function(String? message, dynamic failure) requestCancelled,
    required TResult Function(String message, dynamic failure) customFailure,
    required TResult Function(String? message, dynamic failure) noInternetFailure,
    required TResult Function(String? message, dynamic failure)
        unauthenticatedFailure,
    required TResult Function(dynamic error, dynamic failure) unknownError,
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
    TResult? Function(dynamic error, dynamic failure)? unknownError,
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
    TResult Function(dynamic error, dynamic failure)? unknownError,
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
  const factory NoInternetFailure([final String? message, final dynamic failure]) = _$NoInternetFailureImpl;
  const NoInternetFailure._() : super._();

  String? get message;
  @override
  dynamic get failure;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoInternetFailureImplCopyWith<_$NoInternetFailureImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthenticatedFailureImplCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
  factory _$$UnauthenticatedFailureImplCopyWith(
          _$UnauthenticatedFailureImpl value, $Res Function(_$UnauthenticatedFailureImpl) then) =
      __$$UnauthenticatedFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, dynamic failure});
}

/// @nodoc
class __$$UnauthenticatedFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$UnauthenticatedFailureImpl>
    implements _$$UnauthenticatedFailureImplCopyWith<$Res> {
  __$$UnauthenticatedFailureImplCopyWithImpl(
      _$UnauthenticatedFailureImpl _value, $Res Function(_$UnauthenticatedFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$UnauthenticatedFailureImpl(
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

class _$UnauthenticatedFailureImpl extends UnauthenticatedFailure {
  const _$UnauthenticatedFailureImpl([this.message, this.failure]) : super._();

  @override
  final String? message;
  @override
  final dynamic failure;

  @override
  String toString() {
    return 'NetworkFailure.unauthenticatedFailure(message: $message, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthenticatedFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, const DeepCollectionEquality().hash(failure));

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthenticatedFailureImplCopyWith<_$UnauthenticatedFailureImpl> get copyWith =>
      __$$UnauthenticatedFailureImplCopyWithImpl<_$UnauthenticatedFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, dynamic failure) serverFailure,
    required TResult Function(String? message, dynamic failure) requestCancelled,
    required TResult Function(String message, dynamic failure) customFailure,
    required TResult Function(String? message, dynamic failure) noInternetFailure,
    required TResult Function(String? message, dynamic failure)
        unauthenticatedFailure,
    required TResult Function(dynamic error, dynamic failure) unknownError,
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
    TResult? Function(dynamic error, dynamic failure)? unknownError,
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
    TResult Function(dynamic error, dynamic failure)? unknownError,
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
  const factory UnauthenticatedFailure([final String? message, final dynamic failure]) = _$UnauthenticatedFailureImpl;
  const UnauthenticatedFailure._() : super._();

  String? get message;
  @override
  dynamic get failure;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnauthenticatedFailureImplCopyWith<_$UnauthenticatedFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownErrorImplCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
  factory _$$UnknownErrorImplCopyWith(_$UnknownErrorImpl value, $Res Function(_$UnknownErrorImpl) then) =
      __$$UnknownErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic error, dynamic failure});
}

/// @nodoc
class __$$UnknownErrorImplCopyWithImpl<$Res> extends _$NetworkFailureCopyWithImpl<$Res, _$UnknownErrorImpl>
    implements _$$UnknownErrorImplCopyWith<$Res> {
  __$$UnknownErrorImplCopyWithImpl(_$UnknownErrorImpl _value, $Res Function(_$UnknownErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$UnknownErrorImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$UnknownErrorImpl extends UnknownError {
  const _$UnknownErrorImpl(this.error, [this.failure]) : super._();

  @override
  final dynamic error;
  @override
  final dynamic failure;

  @override
  String toString() {
    return 'NetworkFailure.unknownError(error: $error, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), const DeepCollectionEquality().hash(failure));

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownErrorImplCopyWith<_$UnknownErrorImpl> get copyWith =>
      __$$UnknownErrorImplCopyWithImpl<_$UnknownErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, dynamic failure) serverFailure,
    required TResult Function(String? message, dynamic failure) requestCancelled,
    required TResult Function(String message, dynamic failure) customFailure,
    required TResult Function(String? message, dynamic failure) noInternetFailure,
    required TResult Function(String? message, dynamic failure)
        unauthenticatedFailure,
    required TResult Function(dynamic error, dynamic failure) unknownError,
  }) {
    return unknownError(error, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, dynamic failure)? serverFailure,
    TResult? Function(String? message, dynamic failure)? requestCancelled,
    TResult? Function(String message, dynamic failure)? customFailure,
    TResult? Function(String? message, dynamic failure)? noInternetFailure,
    TResult? Function(String? message, dynamic failure)? unauthenticatedFailure,
    TResult? Function(dynamic error, dynamic failure)? unknownError,
  }) {
    return unknownError?.call(error, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, dynamic failure)? serverFailure,
    TResult Function(String? message, dynamic failure)? requestCancelled,
    TResult Function(String message, dynamic failure)? customFailure,
    TResult Function(String? message, dynamic failure)? noInternetFailure,
    TResult Function(String? message, dynamic failure)? unauthenticatedFailure,
    TResult Function(dynamic error, dynamic failure)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(error, failure);
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
  const factory UnknownError(final dynamic error, [final dynamic failure]) = _$UnknownErrorImpl;
  const UnknownError._() : super._();

  dynamic get error;
  @override
  dynamic get failure;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownErrorImplCopyWith<_$UnknownErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
