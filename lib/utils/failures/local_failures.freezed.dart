// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalFailure {
  dynamic get failure => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, dynamic failure) customFailure,
    required TResult Function(dynamic error, dynamic failure) unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, dynamic failure)? customFailure,
    TResult? Function(dynamic error, dynamic failure)? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, dynamic failure)? customFailure,
    TResult Function(dynamic error, dynamic failure)? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomFailure value) customFailure,
    required TResult Function(UnknownError value) unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomFailure value)? customFailure,
    TResult? Function(UnknownError value)? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomFailure value)? customFailure,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of LocalFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalFailureCopyWith<LocalFailure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalFailureCopyWith<$Res> {
  factory $LocalFailureCopyWith(LocalFailure value, $Res Function(LocalFailure) then) =
      _$LocalFailureCopyWithImpl<$Res, LocalFailure>;
  @useResult
  $Res call({dynamic failure});
}

/// @nodoc
class _$LocalFailureCopyWithImpl<$Res, $Val extends LocalFailure>
    implements $LocalFailureCopyWith<$Res> {
  _$LocalFailureCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalFailure
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
abstract class _$$CustomFailureImplCopyWith<$Res> implements $LocalFailureCopyWith<$Res> {
  factory _$$CustomFailureImplCopyWith(_$CustomFailureImpl value, $Res Function(_$CustomFailureImpl) then) =
      __$$CustomFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, dynamic failure});
}

/// @nodoc
class __$$CustomFailureImplCopyWithImpl<$Res> extends _$LocalFailureCopyWithImpl<$Res, _$CustomFailureImpl>
    implements _$$CustomFailureImplCopyWith<$Res> {
  __$$CustomFailureImplCopyWithImpl(_$CustomFailureImpl _value, $Res Function(_$CustomFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalFailure
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
    return 'LocalFailure.customFailure(message: $message, failure: $failure)';
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

  /// Create a copy of LocalFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomFailureImplCopyWith<_$CustomFailureImpl> get copyWith =>
      __$$CustomFailureImplCopyWithImpl<_$CustomFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, dynamic failure) customFailure,
    required TResult Function(dynamic error, dynamic failure) unknownError,
  }) {
    return customFailure(message, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, dynamic failure)? customFailure,
    TResult? Function(dynamic error, dynamic failure)? unknownError,
  }) {
    return customFailure?.call(message, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, dynamic failure)? customFailure,
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
    required TResult Function(CustomFailure value) customFailure,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return customFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomFailure value)? customFailure,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return customFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomFailure value)? customFailure,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (customFailure != null) {
      return customFailure(this);
    }
    return orElse();
  }
}

abstract class CustomFailure extends LocalFailure {
  const factory CustomFailure(final String message, [final dynamic failure]) = _$CustomFailureImpl;
  const CustomFailure._() : super._();

  String get message;
  @override
  dynamic get failure;

  /// Create a copy of LocalFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomFailureImplCopyWith<_$CustomFailureImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownErrorImplCopyWith<$Res> implements $LocalFailureCopyWith<$Res> {
  factory _$$UnknownErrorImplCopyWith(_$UnknownErrorImpl value, $Res Function(_$UnknownErrorImpl) then) =
      __$$UnknownErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic error, dynamic failure});
}

/// @nodoc
class __$$UnknownErrorImplCopyWithImpl<$Res> extends _$LocalFailureCopyWithImpl<$Res, _$UnknownErrorImpl>
    implements _$$UnknownErrorImplCopyWith<$Res> {
  __$$UnknownErrorImplCopyWithImpl(_$UnknownErrorImpl _value, $Res Function(_$UnknownErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalFailure
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
    return 'LocalFailure.unknownError(error: $error, failure: $failure)';
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

  /// Create a copy of LocalFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownErrorImplCopyWith<_$UnknownErrorImpl> get copyWith =>
      __$$UnknownErrorImplCopyWithImpl<_$UnknownErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, dynamic failure) customFailure,
    required TResult Function(dynamic error, dynamic failure) unknownError,
  }) {
    return unknownError(error, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, dynamic failure)? customFailure,
    TResult? Function(dynamic error, dynamic failure)? unknownError,
  }) {
    return unknownError?.call(error, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, dynamic failure)? customFailure,
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
    required TResult Function(CustomFailure value) customFailure,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomFailure value)? customFailure,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomFailure value)? customFailure,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class UnknownError extends LocalFailure {
  const factory UnknownError(final dynamic error, [final dynamic failure]) = _$UnknownErrorImpl;
  const UnknownError._() : super._();

  dynamic get error;
  @override
  dynamic get failure;

  /// Create a copy of LocalFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownErrorImplCopyWith<_$UnknownErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
