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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) customFailure,
    required TResult Function(dynamic error) unknownError,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? customFailure,
    TResult? Function(dynamic error)? unknownError,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? customFailure,
    TResult Function(dynamic error)? unknownError,
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
}

/// @nodoc
abstract class $LocalFailureCopyWith<$Res> {
  factory $LocalFailureCopyWith(
          LocalFailure value, $Res Function(LocalFailure) then) =
      _$LocalFailureCopyWithImpl<$Res, LocalFailure>;
}

/// @nodoc
class _$LocalFailureCopyWithImpl<$Res, $Val extends LocalFailure>
    implements $LocalFailureCopyWith<$Res> {
  _$LocalFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CustomFailureCopyWith<$Res> {
  factory _$$CustomFailureCopyWith(
          _$CustomFailure value, $Res Function(_$CustomFailure) then) =
      __$$CustomFailureCopyWithImpl<$Res>;

  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CustomFailureCopyWithImpl<$Res>
    extends _$LocalFailureCopyWithImpl<$Res, _$CustomFailure>
    implements _$$CustomFailureCopyWith<$Res> {
  __$$CustomFailureCopyWithImpl(
      _$CustomFailure _value, $Res Function(_$CustomFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CustomFailure(
      null == message
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
    return 'LocalFailure.customFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomFailureCopyWith<_$CustomFailure> get copyWith =>
      __$$CustomFailureCopyWithImpl<_$CustomFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) customFailure,
    required TResult Function(dynamic error) unknownError,
  }) {
    return customFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? customFailure,
    TResult? Function(dynamic error)? unknownError,
  }) {
    return customFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? customFailure,
    TResult Function(dynamic error)? unknownError,
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
  const factory CustomFailure(final String message) = _$CustomFailure;

  const CustomFailure._() : super._();

  String get message;

  @JsonKey(ignore: true)
  _$$CustomFailureCopyWith<_$CustomFailure> get copyWith =>
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
    extends _$LocalFailureCopyWithImpl<$Res, _$UnknownError>
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
    return 'LocalFailure.unknownError(error: $error)';
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
    required TResult Function(String message) customFailure,
    required TResult Function(dynamic error) unknownError,
  }) {
    return unknownError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? customFailure,
    TResult? Function(dynamic error)? unknownError,
  }) {
    return unknownError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? customFailure,
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
  const factory UnknownError(final dynamic error) = _$UnknownError;

  const UnknownError._() : super._();

  dynamic get error;

  @JsonKey(ignore: true)
  _$$UnknownErrorCopyWith<_$UnknownError> get copyWith =>
      throw _privateConstructorUsedError;
}
