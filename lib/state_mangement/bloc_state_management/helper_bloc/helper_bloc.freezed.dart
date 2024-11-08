// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'helper_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HelperBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loadingChanged,
    required TResult Function() failureCleared,
    required TResult Function(BaseFailure failure) failureHappened,
    required TResult Function(Object unknownError) unknownErrorHappened,
    required TResult Function(ContextCallback contextCallback) contextCallbackTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? loadingChanged,
    TResult? Function()? failureCleared,
    TResult? Function(BaseFailure failure)? failureHappened,
    TResult? Function(Object unknownError)? unknownErrorHappened,
    TResult? Function(ContextCallback contextCallback)?
        contextCallbackTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
    TResult Function()? failureCleared,
    TResult Function(BaseFailure failure)? failureHappened,
    TResult Function(Object unknownError)? unknownErrorHappened,
    TResult Function(ContextCallback contextCallback)? contextCallbackTriggered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChanged value) loadingChanged,
    required TResult Function(FailureCleared value) failureCleared,
    required TResult Function(FailureHappened value) failureHappened,
    required TResult Function(UnknownErrorHappened value) unknownErrorHappened,
    required TResult Function(ContextCallbackTriggered value)
        contextCallbackTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingChanged value)? loadingChanged,
    TResult? Function(FailureCleared value)? failureCleared,
    TResult? Function(FailureHappened value)? failureHappened,
    TResult? Function(UnknownErrorHappened value)? unknownErrorHappened,
    TResult? Function(ContextCallbackTriggered value)? contextCallbackTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChanged value)? loadingChanged,
    TResult Function(FailureCleared value)? failureCleared,
    TResult Function(FailureHappened value)? failureHappened,
    TResult Function(UnknownErrorHappened value)? unknownErrorHappened,
    TResult Function(ContextCallbackTriggered value)? contextCallbackTriggered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelperBlocEventCopyWith<$Res> {
  factory $HelperBlocEventCopyWith(
          HelperBlocEvent value, $Res Function(HelperBlocEvent) then) =
      _$HelperBlocEventCopyWithImpl<$Res, HelperBlocEvent>;
}

/// @nodoc
class _$HelperBlocEventCopyWithImpl<$Res, $Val extends HelperBlocEvent>
    implements $HelperBlocEventCopyWith<$Res> {
  _$HelperBlocEventCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HelperBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingChangedImplCopyWith<$Res> {
  factory _$$LoadingChangedImplCopyWith(_$LoadingChangedImpl value, $Res Function(_$LoadingChangedImpl) then) =
      __$$LoadingChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$LoadingChangedImplCopyWithImpl<$Res> extends _$HelperBlocEventCopyWithImpl<$Res, _$LoadingChangedImpl>
    implements _$$LoadingChangedImplCopyWith<$Res> {
  __$$LoadingChangedImplCopyWithImpl(_$LoadingChangedImpl _value, $Res Function(_$LoadingChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HelperBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$LoadingChangedImpl(
      null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingChangedImpl implements LoadingChanged {
  const _$LoadingChangedImpl(this.isLoading);

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'HelperBlocEvent.loadingChanged(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingChangedImpl &&
            (identical(other.isLoading, isLoading) || other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  /// Create a copy of HelperBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingChangedImplCopyWith<_$LoadingChangedImpl> get copyWith =>
      __$$LoadingChangedImplCopyWithImpl<_$LoadingChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loadingChanged,
    required TResult Function() failureCleared,
    required TResult Function(BaseFailure failure) failureHappened,
    required TResult Function(Object unknownError) unknownErrorHappened,
    required TResult Function(ContextCallback contextCallback) contextCallbackTriggered,
  }) {
    return loadingChanged(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? loadingChanged,
    TResult? Function()? failureCleared,
    TResult? Function(BaseFailure failure)? failureHappened,
    TResult? Function(Object unknownError)? unknownErrorHappened,
    TResult? Function(ContextCallback contextCallback)?
        contextCallbackTriggered,
  }) {
    return loadingChanged?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
    TResult Function()? failureCleared,
    TResult Function(BaseFailure failure)? failureHappened,
    TResult Function(Object unknownError)? unknownErrorHappened,
    TResult Function(ContextCallback contextCallback)? contextCallbackTriggered,
    required TResult orElse(),
  }) {
    if (loadingChanged != null) {
      return loadingChanged(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChanged value) loadingChanged,
    required TResult Function(FailureCleared value) failureCleared,
    required TResult Function(FailureHappened value) failureHappened,
    required TResult Function(UnknownErrorHappened value) unknownErrorHappened,
    required TResult Function(ContextCallbackTriggered value)
        contextCallbackTriggered,
  }) {
    return loadingChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingChanged value)? loadingChanged,
    TResult? Function(FailureCleared value)? failureCleared,
    TResult? Function(FailureHappened value)? failureHappened,
    TResult? Function(UnknownErrorHappened value)? unknownErrorHappened,
    TResult? Function(ContextCallbackTriggered value)? contextCallbackTriggered,
  }) {
    return loadingChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChanged value)? loadingChanged,
    TResult Function(FailureCleared value)? failureCleared,
    TResult Function(FailureHappened value)? failureHappened,
    TResult Function(UnknownErrorHappened value)? unknownErrorHappened,
    TResult Function(ContextCallbackTriggered value)? contextCallbackTriggered,
    required TResult orElse(),
  }) {
    if (loadingChanged != null) {
      return loadingChanged(this);
    }
    return orElse();
  }
}

abstract class LoadingChanged implements HelperBlocEvent {
  const factory LoadingChanged(final bool isLoading) = _$LoadingChangedImpl;

  bool get isLoading;

  /// Create a copy of HelperBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingChangedImplCopyWith<_$LoadingChangedImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureClearedImplCopyWith<$Res> {
  factory _$$FailureClearedImplCopyWith(_$FailureClearedImpl value, $Res Function(_$FailureClearedImpl) then) =
      __$$FailureClearedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailureClearedImplCopyWithImpl<$Res> extends _$HelperBlocEventCopyWithImpl<$Res, _$FailureClearedImpl>
    implements _$$FailureClearedImplCopyWith<$Res> {
  __$$FailureClearedImplCopyWithImpl(_$FailureClearedImpl _value, $Res Function(_$FailureClearedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HelperBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FailureClearedImpl implements FailureCleared {
  const _$FailureClearedImpl();

  @override
  String toString() {
    return 'HelperBlocEvent.failureCleared()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$FailureClearedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loadingChanged,
    required TResult Function() failureCleared,
    required TResult Function(BaseFailure failure) failureHappened,
    required TResult Function(Object unknownError) unknownErrorHappened,
    required TResult Function(ContextCallback contextCallback)
        contextCallbackTriggered,
  }) {
    return failureCleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? loadingChanged,
    TResult? Function()? failureCleared,
    TResult? Function(BaseFailure failure)? failureHappened,
    TResult? Function(Object unknownError)? unknownErrorHappened,
    TResult? Function(ContextCallback contextCallback)?
        contextCallbackTriggered,
  }) {
    return failureCleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
    TResult Function()? failureCleared,
    TResult Function(BaseFailure failure)? failureHappened,
    TResult Function(Object unknownError)? unknownErrorHappened,
    TResult Function(ContextCallback contextCallback)? contextCallbackTriggered,
    required TResult orElse(),
  }) {
    if (failureCleared != null) {
      return failureCleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChanged value) loadingChanged,
    required TResult Function(FailureCleared value) failureCleared,
    required TResult Function(FailureHappened value) failureHappened,
    required TResult Function(UnknownErrorHappened value) unknownErrorHappened,
    required TResult Function(ContextCallbackTriggered value)
        contextCallbackTriggered,
  }) {
    return failureCleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingChanged value)? loadingChanged,
    TResult? Function(FailureCleared value)? failureCleared,
    TResult? Function(FailureHappened value)? failureHappened,
    TResult? Function(UnknownErrorHappened value)? unknownErrorHappened,
    TResult? Function(ContextCallbackTriggered value)? contextCallbackTriggered,
  }) {
    return failureCleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChanged value)? loadingChanged,
    TResult Function(FailureCleared value)? failureCleared,
    TResult Function(FailureHappened value)? failureHappened,
    TResult Function(UnknownErrorHappened value)? unknownErrorHappened,
    TResult Function(ContextCallbackTriggered value)? contextCallbackTriggered,
    required TResult orElse(),
  }) {
    if (failureCleared != null) {
      return failureCleared(this);
    }
    return orElse();
  }
}

abstract class FailureCleared implements HelperBlocEvent {
  const factory FailureCleared() = _$FailureClearedImpl;
}

/// @nodoc
abstract class _$$FailureHappenedImplCopyWith<$Res> {
  factory _$$FailureHappenedImplCopyWith(_$FailureHappenedImpl value, $Res Function(_$FailureHappenedImpl) then) =
      __$$FailureHappenedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BaseFailure failure});
}

/// @nodoc
class __$$FailureHappenedImplCopyWithImpl<$Res> extends _$HelperBlocEventCopyWithImpl<$Res, _$FailureHappenedImpl>
    implements _$$FailureHappenedImplCopyWith<$Res> {
  __$$FailureHappenedImplCopyWithImpl(_$FailureHappenedImpl _value, $Res Function(_$FailureHappenedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HelperBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FailureHappenedImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as BaseFailure,
    ));
  }
}

/// @nodoc

class _$FailureHappenedImpl implements FailureHappened {
  const _$FailureHappenedImpl(this.failure);

  @override
  final BaseFailure failure;

  @override
  String toString() {
    return 'HelperBlocEvent.failureHappened(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureHappenedImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of HelperBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureHappenedImplCopyWith<_$FailureHappenedImpl> get copyWith =>
      __$$FailureHappenedImplCopyWithImpl<_$FailureHappenedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loadingChanged,
    required TResult Function() failureCleared,
    required TResult Function(BaseFailure failure) failureHappened,
    required TResult Function(Object unknownError) unknownErrorHappened,
    required TResult Function(ContextCallback contextCallback) contextCallbackTriggered,
  }) {
    return failureHappened(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? loadingChanged,
    TResult? Function()? failureCleared,
    TResult? Function(BaseFailure failure)? failureHappened,
    TResult? Function(Object unknownError)? unknownErrorHappened,
    TResult? Function(ContextCallback contextCallback)?
        contextCallbackTriggered,
  }) {
    return failureHappened?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
    TResult Function()? failureCleared,
    TResult Function(BaseFailure failure)? failureHappened,
    TResult Function(Object unknownError)? unknownErrorHappened,
    TResult Function(ContextCallback contextCallback)? contextCallbackTriggered,
    required TResult orElse(),
  }) {
    if (failureHappened != null) {
      return failureHappened(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChanged value) loadingChanged,
    required TResult Function(FailureCleared value) failureCleared,
    required TResult Function(FailureHappened value) failureHappened,
    required TResult Function(UnknownErrorHappened value) unknownErrorHappened,
    required TResult Function(ContextCallbackTriggered value)
        contextCallbackTriggered,
  }) {
    return failureHappened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingChanged value)? loadingChanged,
    TResult? Function(FailureCleared value)? failureCleared,
    TResult? Function(FailureHappened value)? failureHappened,
    TResult? Function(UnknownErrorHappened value)? unknownErrorHappened,
    TResult? Function(ContextCallbackTriggered value)? contextCallbackTriggered,
  }) {
    return failureHappened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChanged value)? loadingChanged,
    TResult Function(FailureCleared value)? failureCleared,
    TResult Function(FailureHappened value)? failureHappened,
    TResult Function(UnknownErrorHappened value)? unknownErrorHappened,
    TResult Function(ContextCallbackTriggered value)? contextCallbackTriggered,
    required TResult orElse(),
  }) {
    if (failureHappened != null) {
      return failureHappened(this);
    }
    return orElse();
  }
}

abstract class FailureHappened implements HelperBlocEvent {
  const factory FailureHappened(final BaseFailure failure) = _$FailureHappenedImpl;

  BaseFailure get failure;

  /// Create a copy of HelperBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureHappenedImplCopyWith<_$FailureHappenedImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownErrorHappenedImplCopyWith<$Res> {
  factory _$$UnknownErrorHappenedImplCopyWith(
          _$UnknownErrorHappenedImpl value, $Res Function(_$UnknownErrorHappenedImpl) then) =
      __$$UnknownErrorHappenedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object unknownError});
}

/// @nodoc
class __$$UnknownErrorHappenedImplCopyWithImpl<$Res>
    extends _$HelperBlocEventCopyWithImpl<$Res, _$UnknownErrorHappenedImpl>
    implements _$$UnknownErrorHappenedImplCopyWith<$Res> {
  __$$UnknownErrorHappenedImplCopyWithImpl(
      _$UnknownErrorHappenedImpl _value, $Res Function(_$UnknownErrorHappenedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HelperBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unknownError = null,
  }) {
    return _then(_$UnknownErrorHappenedImpl(
      null == unknownError ? _value.unknownError : unknownError,
    ));
  }
}

/// @nodoc

class _$UnknownErrorHappenedImpl implements UnknownErrorHappened {
  const _$UnknownErrorHappenedImpl(this.unknownError);

  @override
  final Object unknownError;

  @override
  String toString() {
    return 'HelperBlocEvent.unknownErrorHappened(unknownError: $unknownError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownErrorHappenedImpl &&
            const DeepCollectionEquality().equals(other.unknownError, unknownError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(unknownError));

  /// Create a copy of HelperBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownErrorHappenedImplCopyWith<_$UnknownErrorHappenedImpl> get copyWith =>
      __$$UnknownErrorHappenedImplCopyWithImpl<_$UnknownErrorHappenedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loadingChanged,
    required TResult Function() failureCleared,
    required TResult Function(BaseFailure failure) failureHappened,
    required TResult Function(Object unknownError) unknownErrorHappened,
    required TResult Function(ContextCallback contextCallback) contextCallbackTriggered,
  }) {
    return unknownErrorHappened(unknownError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? loadingChanged,
    TResult? Function()? failureCleared,
    TResult? Function(BaseFailure failure)? failureHappened,
    TResult? Function(Object unknownError)? unknownErrorHappened,
    TResult? Function(ContextCallback contextCallback)?
        contextCallbackTriggered,
  }) {
    return unknownErrorHappened?.call(unknownError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
    TResult Function()? failureCleared,
    TResult Function(BaseFailure failure)? failureHappened,
    TResult Function(Object unknownError)? unknownErrorHappened,
    TResult Function(ContextCallback contextCallback)? contextCallbackTriggered,
    required TResult orElse(),
  }) {
    if (unknownErrorHappened != null) {
      return unknownErrorHappened(unknownError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChanged value) loadingChanged,
    required TResult Function(FailureCleared value) failureCleared,
    required TResult Function(FailureHappened value) failureHappened,
    required TResult Function(UnknownErrorHappened value) unknownErrorHappened,
    required TResult Function(ContextCallbackTriggered value)
        contextCallbackTriggered,
  }) {
    return unknownErrorHappened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingChanged value)? loadingChanged,
    TResult? Function(FailureCleared value)? failureCleared,
    TResult? Function(FailureHappened value)? failureHappened,
    TResult? Function(UnknownErrorHappened value)? unknownErrorHappened,
    TResult? Function(ContextCallbackTriggered value)? contextCallbackTriggered,
  }) {
    return unknownErrorHappened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChanged value)? loadingChanged,
    TResult Function(FailureCleared value)? failureCleared,
    TResult Function(FailureHappened value)? failureHappened,
    TResult Function(UnknownErrorHappened value)? unknownErrorHappened,
    TResult Function(ContextCallbackTriggered value)? contextCallbackTriggered,
    required TResult orElse(),
  }) {
    if (unknownErrorHappened != null) {
      return unknownErrorHappened(this);
    }
    return orElse();
  }
}

abstract class UnknownErrorHappened implements HelperBlocEvent {
  const factory UnknownErrorHappened(final Object unknownError) = _$UnknownErrorHappenedImpl;

  Object get unknownError;

  /// Create a copy of HelperBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownErrorHappenedImplCopyWith<_$UnknownErrorHappenedImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContextCallbackTriggeredImplCopyWith<$Res> {
  factory _$$ContextCallbackTriggeredImplCopyWith(
          _$ContextCallbackTriggeredImpl value, $Res Function(_$ContextCallbackTriggeredImpl) then) =
      __$$ContextCallbackTriggeredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ContextCallback contextCallback});
}

/// @nodoc
class __$$ContextCallbackTriggeredImplCopyWithImpl<$Res>
    extends _$HelperBlocEventCopyWithImpl<$Res, _$ContextCallbackTriggeredImpl>
    implements _$$ContextCallbackTriggeredImplCopyWith<$Res> {
  __$$ContextCallbackTriggeredImplCopyWithImpl(
      _$ContextCallbackTriggeredImpl _value, $Res Function(_$ContextCallbackTriggeredImpl) _then)
      : super(_value, _then);

  /// Create a copy of HelperBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contextCallback = null,
  }) {
    return _then(_$ContextCallbackTriggeredImpl(
      null == contextCallback
          ? _value.contextCallback
          : contextCallback // ignore: cast_nullable_to_non_nullable
              as ContextCallback,
    ));
  }
}

/// @nodoc

class _$ContextCallbackTriggeredImpl implements ContextCallbackTriggered {
  const _$ContextCallbackTriggeredImpl(this.contextCallback);

  @override
  final ContextCallback contextCallback;

  @override
  String toString() {
    return 'HelperBlocEvent.contextCallbackTriggered(contextCallback: $contextCallback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContextCallbackTriggeredImpl &&
            (identical(other.contextCallback, contextCallback) || other.contextCallback == contextCallback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contextCallback);

  /// Create a copy of HelperBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContextCallbackTriggeredImplCopyWith<_$ContextCallbackTriggeredImpl> get copyWith =>
      __$$ContextCallbackTriggeredImplCopyWithImpl<_$ContextCallbackTriggeredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loadingChanged,
    required TResult Function() failureCleared,
    required TResult Function(BaseFailure failure) failureHappened,
    required TResult Function(Object unknownError) unknownErrorHappened,
    required TResult Function(ContextCallback contextCallback) contextCallbackTriggered,
  }) {
    return contextCallbackTriggered(contextCallback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? loadingChanged,
    TResult? Function()? failureCleared,
    TResult? Function(BaseFailure failure)? failureHappened,
    TResult? Function(Object unknownError)? unknownErrorHappened,
    TResult? Function(ContextCallback contextCallback)?
        contextCallbackTriggered,
  }) {
    return contextCallbackTriggered?.call(contextCallback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
    TResult Function()? failureCleared,
    TResult Function(BaseFailure failure)? failureHappened,
    TResult Function(Object unknownError)? unknownErrorHappened,
    TResult Function(ContextCallback contextCallback)? contextCallbackTriggered,
    required TResult orElse(),
  }) {
    if (contextCallbackTriggered != null) {
      return contextCallbackTriggered(contextCallback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChanged value) loadingChanged,
    required TResult Function(FailureCleared value) failureCleared,
    required TResult Function(FailureHappened value) failureHappened,
    required TResult Function(UnknownErrorHappened value) unknownErrorHappened,
    required TResult Function(ContextCallbackTriggered value)
        contextCallbackTriggered,
  }) {
    return contextCallbackTriggered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingChanged value)? loadingChanged,
    TResult? Function(FailureCleared value)? failureCleared,
    TResult? Function(FailureHappened value)? failureHappened,
    TResult? Function(UnknownErrorHappened value)? unknownErrorHappened,
    TResult? Function(ContextCallbackTriggered value)? contextCallbackTriggered,
  }) {
    return contextCallbackTriggered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChanged value)? loadingChanged,
    TResult Function(FailureCleared value)? failureCleared,
    TResult Function(FailureHappened value)? failureHappened,
    TResult Function(UnknownErrorHappened value)? unknownErrorHappened,
    TResult Function(ContextCallbackTriggered value)? contextCallbackTriggered,
    required TResult orElse(),
  }) {
    if (contextCallbackTriggered != null) {
      return contextCallbackTriggered(this);
    }
    return orElse();
  }
}

abstract class ContextCallbackTriggered implements HelperBlocEvent {
  const factory ContextCallbackTriggered(final ContextCallback contextCallback) = _$ContextCallbackTriggeredImpl;

  ContextCallback get contextCallback;

  /// Create a copy of HelperBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContextCallbackTriggeredImplCopyWith<_$ContextCallbackTriggeredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HelperBlocState {
  bool get isLoading => throw _privateConstructorUsedError;
  ContextCallback get contextCallback => throw _privateConstructorUsedError;
  BaseFailure? get failure => throw _privateConstructorUsedError;
  Object? get unknownError => throw _privateConstructorUsedError;

  /// Create a copy of HelperBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HelperBlocStateCopyWith<HelperBlocState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelperBlocStateCopyWith<$Res> {
  factory $HelperBlocStateCopyWith(
          HelperBlocState value, $Res Function(HelperBlocState) then) =
      _$HelperBlocStateCopyWithImpl<$Res, HelperBlocState>;
  @useResult
  $Res call(
      {bool isLoading,
      ContextCallback contextCallback,
      BaseFailure? failure,
      Object? unknownError});
}

/// @nodoc
class _$HelperBlocStateCopyWithImpl<$Res, $Val extends HelperBlocState>
    implements $HelperBlocStateCopyWith<$Res> {
  _$HelperBlocStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HelperBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? contextCallback = null,
    Object? failure = freezed,
    Object? unknownError = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      contextCallback: null == contextCallback
          ? _value.contextCallback
          : contextCallback // ignore: cast_nullable_to_non_nullable
              as ContextCallback,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as BaseFailure?,
      unknownError: freezed == unknownError ? _value.unknownError : unknownError,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelperBlocStateImplCopyWith<$Res> implements $HelperBlocStateCopyWith<$Res> {
  factory _$$HelperBlocStateImplCopyWith(_$HelperBlocStateImpl value, $Res Function(_$HelperBlocStateImpl) then) =
      __$$HelperBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, ContextCallback contextCallback, BaseFailure? failure, Object? unknownError});
}

/// @nodoc
class __$$HelperBlocStateImplCopyWithImpl<$Res> extends _$HelperBlocStateCopyWithImpl<$Res, _$HelperBlocStateImpl>
    implements _$$HelperBlocStateImplCopyWith<$Res> {
  __$$HelperBlocStateImplCopyWithImpl(_$HelperBlocStateImpl _value, $Res Function(_$HelperBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HelperBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? contextCallback = null,
    Object? failure = freezed,
    Object? unknownError = freezed,
  }) {
    return _then(_$HelperBlocStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      contextCallback: null == contextCallback
          ? _value.contextCallback
          : contextCallback // ignore: cast_nullable_to_non_nullable
              as ContextCallback,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as BaseFailure?,
      unknownError: freezed == unknownError ? _value.unknownError : unknownError,
    ));
  }
}

/// @nodoc

class _$HelperBlocStateImpl implements _HelperBlocState {
  const _$HelperBlocStateImpl(
      {required this.isLoading, required this.contextCallback, this.failure, this.unknownError});

  @override
  final bool isLoading;
  @override
  final ContextCallback contextCallback;
  @override
  final BaseFailure? failure;
@override
final Object? unknownError;

@override
String toString() {
return 'HelperBlocState(isLoading: $isLoading, contextCallback: $contextCallback, failure: $failure, unknownError: $unknownError)';
}

@override
bool operator ==(Object other) {
return identical(this, other) ||
(other.runtimeType == runtimeType &&
other is _$HelperBlocStateImpl &&
(identical(other.isLoading, isLoading) ||
other.isLoading == isLoading) &&
(identical(other.contextCallback, contextCallback) ||
other.contextCallback == contextCallback) &&
(identical(other.failure, failure) || other.failure == failure) &&
const DeepCollectionEquality()
    .equals(other.unknownError, unknownError));
}

@override
int get hashCode => Object.hash(runtimeType, isLoading, contextCallback,
failure, const DeepCollectionEquality().hash(unknownError));

/// Create a copy of HelperBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$HelperBlocStateImplCopyWith<_$HelperBlocStateImpl> get copyWith =>
__$$HelperBlocStateImplCopyWithImpl<_$HelperBlocStateImpl>(
this, _$identity);
}

abstract class _HelperBlocState implements HelperBlocState {
const factory _HelperBlocState(
{required final bool isLoading,
required final ContextCallback contextCallback,
final BaseFailure? failure,
final Object? unknownError}) = _$HelperBlocStateImpl;

@override
bool get isLoading;
@override
ContextCallback get contextCallback;
@override
BaseFailure? get failure;
@override
Object? get unknownError;

/// Create a copy of HelperBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@JsonKey(includeFromJson: false, includeToJson: false)
_$$HelperBlocStateImplCopyWith<_$HelperBlocStateImpl> get copyWith =>
throw _privateConstructorUsedError;
}
