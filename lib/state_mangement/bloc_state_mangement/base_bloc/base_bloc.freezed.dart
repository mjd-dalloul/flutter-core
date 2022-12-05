// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'base_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BaseBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loadingChanged,
    required TResult Function(BaseFailure failure) failureHappened,
    required TResult Function(Object unknownError) unknownErrorHappened,
    required TResult Function(ContextCallback contextCallback)
        contextCallbackTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
    TResult Function(BaseFailure failure)? failureHappened,
    TResult Function(Object unknownError)? unknownErrorHappened,
    TResult Function(ContextCallback contextCallback)? contextCallbackTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
    TResult Function(BaseFailure failure)? failureHappened,
    TResult Function(Object unknownError)? unknownErrorHappened,
    TResult Function(ContextCallback contextCallback)? contextCallbackTriggered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChanged value) loadingChanged,
    required TResult Function(FailureHappened value) failureHappened,
    required TResult Function(UnknownErrorHappened value) unknownErrorHappened,
    required TResult Function(ContextCallbackTriggered value)
        contextCallbackTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingChanged value)? loadingChanged,
    TResult Function(FailureHappened value)? failureHappened,
    TResult Function(UnknownErrorHappened value)? unknownErrorHappened,
    TResult Function(ContextCallbackTriggered value)? contextCallbackTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChanged value)? loadingChanged,
    TResult Function(FailureHappened value)? failureHappened,
    TResult Function(UnknownErrorHappened value)? unknownErrorHappened,
    TResult Function(ContextCallbackTriggered value)? contextCallbackTriggered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseBlocEventCopyWith<$Res> {
  factory $BaseBlocEventCopyWith(
          BaseBlocEvent value, $Res Function(BaseBlocEvent) then) =
      _$BaseBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BaseBlocEventCopyWithImpl<$Res>
    implements $BaseBlocEventCopyWith<$Res> {
  _$BaseBlocEventCopyWithImpl(this._value, this._then);

  final BaseBlocEvent _value;
  // ignore: unused_field
  final $Res Function(BaseBlocEvent) _then;
}

/// @nodoc
abstract class _$$LoadingChangedCopyWith<$Res> {
  factory _$$LoadingChangedCopyWith(
          _$LoadingChanged value, $Res Function(_$LoadingChanged) then) =
      __$$LoadingChangedCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class __$$LoadingChangedCopyWithImpl<$Res>
    extends _$BaseBlocEventCopyWithImpl<$Res>
    implements _$$LoadingChangedCopyWith<$Res> {
  __$$LoadingChangedCopyWithImpl(
      _$LoadingChanged _value, $Res Function(_$LoadingChanged) _then)
      : super(_value, (v) => _then(v as _$LoadingChanged));

  @override
  _$LoadingChanged get _value => super._value as _$LoadingChanged;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_$LoadingChanged(
      isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingChanged implements LoadingChanged {
  const _$LoadingChanged(this.isLoading);

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'BaseBlocEvent.loadingChanged(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingChanged &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$LoadingChangedCopyWith<_$LoadingChanged> get copyWith =>
      __$$LoadingChangedCopyWithImpl<_$LoadingChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loadingChanged,
    required TResult Function(BaseFailure failure) failureHappened,
    required TResult Function(Object unknownError) unknownErrorHappened,
    required TResult Function(ContextCallback contextCallback)
        contextCallbackTriggered,
  }) {
    return loadingChanged(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
    TResult Function(BaseFailure failure)? failureHappened,
    TResult Function(Object unknownError)? unknownErrorHappened,
    TResult Function(ContextCallback contextCallback)? contextCallbackTriggered,
  }) {
    return loadingChanged?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
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
    TResult Function(LoadingChanged value)? loadingChanged,
    TResult Function(FailureHappened value)? failureHappened,
    TResult Function(UnknownErrorHappened value)? unknownErrorHappened,
    TResult Function(ContextCallbackTriggered value)? contextCallbackTriggered,
  }) {
    return loadingChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChanged value)? loadingChanged,
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

abstract class LoadingChanged implements BaseBlocEvent {
  const factory LoadingChanged(final bool isLoading) = _$LoadingChanged;

  bool get isLoading;

  @JsonKey(ignore: true)
  _$$LoadingChangedCopyWith<_$LoadingChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureHappenedCopyWith<$Res> {
  factory _$$FailureHappenedCopyWith(
          _$FailureHappened value, $Res Function(_$FailureHappened) then) =
      __$$FailureHappenedCopyWithImpl<$Res>;

  $Res call({BaseFailure failure});
}

/// @nodoc
class __$$FailureHappenedCopyWithImpl<$Res>
    extends _$BaseBlocEventCopyWithImpl<$Res>
    implements _$$FailureHappenedCopyWith<$Res> {
  __$$FailureHappenedCopyWithImpl(
      _$FailureHappened _value, $Res Function(_$FailureHappened) _then)
      : super(_value, (v) => _then(v as _$FailureHappened));

  @override
  _$FailureHappened get _value => super._value as _$FailureHappened;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$FailureHappened(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as BaseFailure,
    ));
  }
}

/// @nodoc

class _$FailureHappened implements FailureHappened {
  const _$FailureHappened(this.failure);

  @override
  final BaseFailure failure;

  @override
  String toString() {
    return 'BaseBlocEvent.failureHappened(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureHappened &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$FailureHappenedCopyWith<_$FailureHappened> get copyWith =>
      __$$FailureHappenedCopyWithImpl<_$FailureHappened>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loadingChanged,
    required TResult Function(BaseFailure failure) failureHappened,
    required TResult Function(Object unknownError) unknownErrorHappened,
    required TResult Function(ContextCallback contextCallback)
        contextCallbackTriggered,
  }) {
    return failureHappened(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
    TResult Function(BaseFailure failure)? failureHappened,
    TResult Function(Object unknownError)? unknownErrorHappened,
    TResult Function(ContextCallback contextCallback)? contextCallbackTriggered,
  }) {
    return failureHappened?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
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
    TResult Function(LoadingChanged value)? loadingChanged,
    TResult Function(FailureHappened value)? failureHappened,
    TResult Function(UnknownErrorHappened value)? unknownErrorHappened,
    TResult Function(ContextCallbackTriggered value)? contextCallbackTriggered,
  }) {
    return failureHappened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChanged value)? loadingChanged,
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

abstract class FailureHappened implements BaseBlocEvent {
  const factory FailureHappened(final BaseFailure failure) = _$FailureHappened;

  BaseFailure get failure;

  @JsonKey(ignore: true)
  _$$FailureHappenedCopyWith<_$FailureHappened> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownErrorHappenedCopyWith<$Res> {
  factory _$$UnknownErrorHappenedCopyWith(_$UnknownErrorHappened value,
          $Res Function(_$UnknownErrorHappened) then) =
      __$$UnknownErrorHappenedCopyWithImpl<$Res>;

  $Res call({Object unknownError});
}

/// @nodoc
class __$$UnknownErrorHappenedCopyWithImpl<$Res>
    extends _$BaseBlocEventCopyWithImpl<$Res>
    implements _$$UnknownErrorHappenedCopyWith<$Res> {
  __$$UnknownErrorHappenedCopyWithImpl(_$UnknownErrorHappened _value,
      $Res Function(_$UnknownErrorHappened) _then)
      : super(_value, (v) => _then(v as _$UnknownErrorHappened));

  @override
  _$UnknownErrorHappened get _value => super._value as _$UnknownErrorHappened;

  @override
  $Res call({
    Object? unknownError = freezed,
  }) {
    return _then(_$UnknownErrorHappened(
      unknownError == freezed
          ? _value.unknownError
          : unknownError // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$UnknownErrorHappened implements UnknownErrorHappened {
  const _$UnknownErrorHappened(this.unknownError);

  @override
  final Object unknownError;

  @override
  String toString() {
    return 'BaseBlocEvent.unknownErrorHappened(unknownError: $unknownError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownErrorHappened &&
            const DeepCollectionEquality()
                .equals(other.unknownError, unknownError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(unknownError));

  @JsonKey(ignore: true)
  @override
  _$$UnknownErrorHappenedCopyWith<_$UnknownErrorHappened> get copyWith =>
      __$$UnknownErrorHappenedCopyWithImpl<_$UnknownErrorHappened>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loadingChanged,
    required TResult Function(BaseFailure failure) failureHappened,
    required TResult Function(Object unknownError) unknownErrorHappened,
    required TResult Function(ContextCallback contextCallback)
        contextCallbackTriggered,
  }) {
    return unknownErrorHappened(unknownError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
    TResult Function(BaseFailure failure)? failureHappened,
    TResult Function(Object unknownError)? unknownErrorHappened,
    TResult Function(ContextCallback contextCallback)? contextCallbackTriggered,
  }) {
    return unknownErrorHappened?.call(unknownError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
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
    TResult Function(LoadingChanged value)? loadingChanged,
    TResult Function(FailureHappened value)? failureHappened,
    TResult Function(UnknownErrorHappened value)? unknownErrorHappened,
    TResult Function(ContextCallbackTriggered value)? contextCallbackTriggered,
  }) {
    return unknownErrorHappened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChanged value)? loadingChanged,
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

abstract class UnknownErrorHappened implements BaseBlocEvent {
  const factory UnknownErrorHappened(final Object unknownError) =
      _$UnknownErrorHappened;

  Object get unknownError;

  @JsonKey(ignore: true)
  _$$UnknownErrorHappenedCopyWith<_$UnknownErrorHappened> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContextCallbackTriggeredCopyWith<$Res> {
  factory _$$ContextCallbackTriggeredCopyWith(_$ContextCallbackTriggered value,
          $Res Function(_$ContextCallbackTriggered) then) =
      __$$ContextCallbackTriggeredCopyWithImpl<$Res>;

  $Res call({ContextCallback contextCallback});
}

/// @nodoc
class __$$ContextCallbackTriggeredCopyWithImpl<$Res>
    extends _$BaseBlocEventCopyWithImpl<$Res>
    implements _$$ContextCallbackTriggeredCopyWith<$Res> {
  __$$ContextCallbackTriggeredCopyWithImpl(_$ContextCallbackTriggered _value,
      $Res Function(_$ContextCallbackTriggered) _then)
      : super(_value, (v) => _then(v as _$ContextCallbackTriggered));

  @override
  _$ContextCallbackTriggered get _value =>
      super._value as _$ContextCallbackTriggered;

  @override
  $Res call({
    Object? contextCallback = freezed,
  }) {
    return _then(_$ContextCallbackTriggered(
      contextCallback == freezed
          ? _value.contextCallback
          : contextCallback // ignore: cast_nullable_to_non_nullable
              as ContextCallback,
    ));
  }
}

/// @nodoc

class _$ContextCallbackTriggered implements ContextCallbackTriggered {
  const _$ContextCallbackTriggered(this.contextCallback);

  @override
  final ContextCallback contextCallback;

  @override
  String toString() {
    return 'BaseBlocEvent.contextCallbackTriggered(contextCallback: $contextCallback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContextCallbackTriggered &&
            (identical(other.contextCallback, contextCallback) ||
                other.contextCallback == contextCallback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contextCallback);

  @JsonKey(ignore: true)
  @override
  _$$ContextCallbackTriggeredCopyWith<_$ContextCallbackTriggered>
      get copyWith =>
          __$$ContextCallbackTriggeredCopyWithImpl<_$ContextCallbackTriggered>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loadingChanged,
    required TResult Function(BaseFailure failure) failureHappened,
    required TResult Function(Object unknownError) unknownErrorHappened,
    required TResult Function(ContextCallback contextCallback)
        contextCallbackTriggered,
  }) {
    return contextCallbackTriggered(contextCallback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
    TResult Function(BaseFailure failure)? failureHappened,
    TResult Function(Object unknownError)? unknownErrorHappened,
    TResult Function(ContextCallback contextCallback)? contextCallbackTriggered,
  }) {
    return contextCallbackTriggered?.call(contextCallback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
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
    TResult Function(LoadingChanged value)? loadingChanged,
    TResult Function(FailureHappened value)? failureHappened,
    TResult Function(UnknownErrorHappened value)? unknownErrorHappened,
    TResult Function(ContextCallbackTriggered value)? contextCallbackTriggered,
  }) {
    return contextCallbackTriggered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChanged value)? loadingChanged,
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

abstract class ContextCallbackTriggered implements BaseBlocEvent {
  const factory ContextCallbackTriggered(
      final ContextCallback contextCallback) = _$ContextCallbackTriggered;

  ContextCallback get contextCallback;
  @JsonKey(ignore: true)
  _$$ContextCallbackTriggeredCopyWith<_$ContextCallbackTriggered>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BaseBlocState {
  bool get isLoading => throw _privateConstructorUsedError;

  ContextCallback get contextCallback => throw _privateConstructorUsedError;

  BaseFailure? get failure => throw _privateConstructorUsedError;

  Object? get unknownError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BaseBlocStateCopyWith<BaseBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseBlocStateCopyWith<$Res> {
  factory $BaseBlocStateCopyWith(
          BaseBlocState value, $Res Function(BaseBlocState) then) =
      _$BaseBlocStateCopyWithImpl<$Res>;

  $Res call(
      {bool isLoading,
      ContextCallback contextCallback,
      BaseFailure? failure,
      Object? unknownError});
}

/// @nodoc
class _$BaseBlocStateCopyWithImpl<$Res>
    implements $BaseBlocStateCopyWith<$Res> {
  _$BaseBlocStateCopyWithImpl(this._value, this._then);

  final BaseBlocState _value;
  // ignore: unused_field
  final $Res Function(BaseBlocState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? contextCallback = freezed,
    Object? failure = freezed,
    Object? unknownError = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      contextCallback: contextCallback == freezed
          ? _value.contextCallback
          : contextCallback // ignore: cast_nullable_to_non_nullable
              as ContextCallback,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as BaseFailure?,
      unknownError:
          unknownError == freezed ? _value.unknownError : unknownError,
    ));
  }
}

/// @nodoc
abstract class _$$_BaseBlocStateCopyWith<$Res>
    implements $BaseBlocStateCopyWith<$Res> {
  factory _$$_BaseBlocStateCopyWith(
          _$_BaseBlocState value, $Res Function(_$_BaseBlocState) then) =
      __$$_BaseBlocStateCopyWithImpl<$Res>;

  @override
  $Res call(
      {bool isLoading,
      ContextCallback contextCallback,
      BaseFailure? failure,
      Object? unknownError});
}

/// @nodoc
class __$$_BaseBlocStateCopyWithImpl<$Res>
    extends _$BaseBlocStateCopyWithImpl<$Res>
    implements _$$_BaseBlocStateCopyWith<$Res> {
  __$$_BaseBlocStateCopyWithImpl(
      _$_BaseBlocState _value, $Res Function(_$_BaseBlocState) _then)
      : super(_value, (v) => _then(v as _$_BaseBlocState));

  @override
  _$_BaseBlocState get _value => super._value as _$_BaseBlocState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? contextCallback = freezed,
    Object? failure = freezed,
    Object? unknownError = freezed,
  }) {
    return _then(_$_BaseBlocState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      contextCallback: contextCallback == freezed
          ? _value.contextCallback
          : contextCallback // ignore: cast_nullable_to_non_nullable
              as ContextCallback,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as BaseFailure?,
      unknownError:
          unknownError == freezed ? _value.unknownError : unknownError,
    ));
  }
}

/// @nodoc

class _$_BaseBlocState implements _BaseBlocState {
  const _$_BaseBlocState(
      {required this.isLoading,
      required this.contextCallback,
      this.failure,
      this.unknownError});

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
    return 'BaseBlocState(isLoading: $isLoading, contextCallback: $contextCallback, failure: $failure, unknownError: $unknownError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseBlocState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            (identical(other.contextCallback, contextCallback) ||
                other.contextCallback == contextCallback) &&
            const DeepCollectionEquality().equals(other.failure, failure) &&
            const DeepCollectionEquality()
                .equals(other.unknownError, unknownError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      contextCallback,
      const DeepCollectionEquality().hash(failure),
      const DeepCollectionEquality().hash(unknownError));

  @JsonKey(ignore: true)
  @override
  _$$_BaseBlocStateCopyWith<_$_BaseBlocState> get copyWith =>
      __$$_BaseBlocStateCopyWithImpl<_$_BaseBlocState>(this, _$identity);
}

abstract class _BaseBlocState implements BaseBlocState {
  const factory _BaseBlocState(
      {required final bool isLoading,
      required final ContextCallback contextCallback,
      final BaseFailure? failure,
      final Object? unknownError}) = _$_BaseBlocState;

  @override
  bool get isLoading;

  @override
  ContextCallback get contextCallback;

  @override
  BaseFailure? get failure;

  @override
  Object? get unknownError;

  @override
  @JsonKey(ignore: true)
  _$$_BaseBlocStateCopyWith<_$_BaseBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
