// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'helper_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HelperBlocEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HelperBlocEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HelperBlocEvent()';
}


}

/// @nodoc
class $HelperBlocEventCopyWith<$Res>  {
$HelperBlocEventCopyWith(HelperBlocEvent _, $Res Function(HelperBlocEvent) __);
}


/// Adds pattern-matching-related methods to [HelperBlocEvent].
extension HelperBlocEventPatterns on HelperBlocEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadingChanged value)?  loadingChanged,TResult Function( FailureCleared value)?  failureCleared,TResult Function( FailureHappened value)?  failureHappened,TResult Function( UnknownErrorHappened value)?  unknownErrorHappened,TResult Function( ContextCallbackTriggered value)?  contextCallbackTriggered,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadingChanged() when loadingChanged != null:
return loadingChanged(_that);case FailureCleared() when failureCleared != null:
return failureCleared(_that);case FailureHappened() when failureHappened != null:
return failureHappened(_that);case UnknownErrorHappened() when unknownErrorHappened != null:
return unknownErrorHappened(_that);case ContextCallbackTriggered() when contextCallbackTriggered != null:
return contextCallbackTriggered(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadingChanged value)  loadingChanged,required TResult Function( FailureCleared value)  failureCleared,required TResult Function( FailureHappened value)  failureHappened,required TResult Function( UnknownErrorHappened value)  unknownErrorHappened,required TResult Function( ContextCallbackTriggered value)  contextCallbackTriggered,}){
final _that = this;
switch (_that) {
case LoadingChanged():
return loadingChanged(_that);case FailureCleared():
return failureCleared(_that);case FailureHappened():
return failureHappened(_that);case UnknownErrorHappened():
return unknownErrorHappened(_that);case ContextCallbackTriggered():
return contextCallbackTriggered(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadingChanged value)?  loadingChanged,TResult? Function( FailureCleared value)?  failureCleared,TResult? Function( FailureHappened value)?  failureHappened,TResult? Function( UnknownErrorHappened value)?  unknownErrorHappened,TResult? Function( ContextCallbackTriggered value)?  contextCallbackTriggered,}){
final _that = this;
switch (_that) {
case LoadingChanged() when loadingChanged != null:
return loadingChanged(_that);case FailureCleared() when failureCleared != null:
return failureCleared(_that);case FailureHappened() when failureHappened != null:
return failureHappened(_that);case UnknownErrorHappened() when unknownErrorHappened != null:
return unknownErrorHappened(_that);case ContextCallbackTriggered() when contextCallbackTriggered != null:
return contextCallbackTriggered(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isLoading)?  loadingChanged,TResult Function()?  failureCleared,TResult Function( BaseFailure failure)?  failureHappened,TResult Function( Object unknownError)?  unknownErrorHappened,TResult Function( ContextCallback contextCallback)?  contextCallbackTriggered,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadingChanged() when loadingChanged != null:
return loadingChanged(_that.isLoading);case FailureCleared() when failureCleared != null:
return failureCleared();case FailureHappened() when failureHappened != null:
return failureHappened(_that.failure);case UnknownErrorHappened() when unknownErrorHappened != null:
return unknownErrorHappened(_that.unknownError);case ContextCallbackTriggered() when contextCallbackTriggered != null:
return contextCallbackTriggered(_that.contextCallback);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isLoading)  loadingChanged,required TResult Function()  failureCleared,required TResult Function( BaseFailure failure)  failureHappened,required TResult Function( Object unknownError)  unknownErrorHappened,required TResult Function( ContextCallback contextCallback)  contextCallbackTriggered,}) {final _that = this;
switch (_that) {
case LoadingChanged():
return loadingChanged(_that.isLoading);case FailureCleared():
return failureCleared();case FailureHappened():
return failureHappened(_that.failure);case UnknownErrorHappened():
return unknownErrorHappened(_that.unknownError);case ContextCallbackTriggered():
return contextCallbackTriggered(_that.contextCallback);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isLoading)?  loadingChanged,TResult? Function()?  failureCleared,TResult? Function( BaseFailure failure)?  failureHappened,TResult? Function( Object unknownError)?  unknownErrorHappened,TResult? Function( ContextCallback contextCallback)?  contextCallbackTriggered,}) {final _that = this;
switch (_that) {
case LoadingChanged() when loadingChanged != null:
return loadingChanged(_that.isLoading);case FailureCleared() when failureCleared != null:
return failureCleared();case FailureHappened() when failureHappened != null:
return failureHappened(_that.failure);case UnknownErrorHappened() when unknownErrorHappened != null:
return unknownErrorHappened(_that.unknownError);case ContextCallbackTriggered() when contextCallbackTriggered != null:
return contextCallbackTriggered(_that.contextCallback);case _:
  return null;

}
}

}

/// @nodoc


class LoadingChanged implements HelperBlocEvent {
  const LoadingChanged(this.isLoading);
  

 final  bool isLoading;

/// Create a copy of HelperBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadingChangedCopyWith<LoadingChanged> get copyWith => _$LoadingChangedCopyWithImpl<LoadingChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingChanged&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading);

@override
String toString() {
  return 'HelperBlocEvent.loadingChanged(isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $LoadingChangedCopyWith<$Res> implements $HelperBlocEventCopyWith<$Res> {
  factory $LoadingChangedCopyWith(LoadingChanged value, $Res Function(LoadingChanged) _then) = _$LoadingChangedCopyWithImpl;
@useResult
$Res call({
 bool isLoading
});




}
/// @nodoc
class _$LoadingChangedCopyWithImpl<$Res>
    implements $LoadingChangedCopyWith<$Res> {
  _$LoadingChangedCopyWithImpl(this._self, this._then);

  final LoadingChanged _self;
  final $Res Function(LoadingChanged) _then;

/// Create a copy of HelperBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isLoading = null,}) {
  return _then(LoadingChanged(
null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class FailureCleared implements HelperBlocEvent {
  const FailureCleared();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FailureCleared);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HelperBlocEvent.failureCleared()';
}


}




/// @nodoc


class FailureHappened implements HelperBlocEvent {
  const FailureHappened(this.failure);
  

 final  BaseFailure failure;

/// Create a copy of HelperBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureHappenedCopyWith<FailureHappened> get copyWith => _$FailureHappenedCopyWithImpl<FailureHappened>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FailureHappened&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'HelperBlocEvent.failureHappened(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $FailureHappenedCopyWith<$Res> implements $HelperBlocEventCopyWith<$Res> {
  factory $FailureHappenedCopyWith(FailureHappened value, $Res Function(FailureHappened) _then) = _$FailureHappenedCopyWithImpl;
@useResult
$Res call({
 BaseFailure failure
});




}
/// @nodoc
class _$FailureHappenedCopyWithImpl<$Res>
    implements $FailureHappenedCopyWith<$Res> {
  _$FailureHappenedCopyWithImpl(this._self, this._then);

  final FailureHappened _self;
  final $Res Function(FailureHappened) _then;

/// Create a copy of HelperBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(FailureHappened(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as BaseFailure,
  ));
}


}

/// @nodoc


class UnknownErrorHappened implements HelperBlocEvent {
  const UnknownErrorHappened(this.unknownError);
  

 final  Object unknownError;

/// Create a copy of HelperBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnknownErrorHappenedCopyWith<UnknownErrorHappened> get copyWith => _$UnknownErrorHappenedCopyWithImpl<UnknownErrorHappened>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownErrorHappened&&const DeepCollectionEquality().equals(other.unknownError, unknownError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(unknownError));

@override
String toString() {
  return 'HelperBlocEvent.unknownErrorHappened(unknownError: $unknownError)';
}


}

/// @nodoc
abstract mixin class $UnknownErrorHappenedCopyWith<$Res> implements $HelperBlocEventCopyWith<$Res> {
  factory $UnknownErrorHappenedCopyWith(UnknownErrorHappened value, $Res Function(UnknownErrorHappened) _then) = _$UnknownErrorHappenedCopyWithImpl;
@useResult
$Res call({
 Object unknownError
});




}
/// @nodoc
class _$UnknownErrorHappenedCopyWithImpl<$Res>
    implements $UnknownErrorHappenedCopyWith<$Res> {
  _$UnknownErrorHappenedCopyWithImpl(this._self, this._then);

  final UnknownErrorHappened _self;
  final $Res Function(UnknownErrorHappened) _then;

/// Create a copy of HelperBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? unknownError = null,}) {
  return _then(UnknownErrorHappened(
null == unknownError ? _self.unknownError : unknownError ,
  ));
}


}

/// @nodoc


class ContextCallbackTriggered implements HelperBlocEvent {
  const ContextCallbackTriggered(this.contextCallback);
  

 final  ContextCallback contextCallback;

/// Create a copy of HelperBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContextCallbackTriggeredCopyWith<ContextCallbackTriggered> get copyWith => _$ContextCallbackTriggeredCopyWithImpl<ContextCallbackTriggered>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContextCallbackTriggered&&(identical(other.contextCallback, contextCallback) || other.contextCallback == contextCallback));
}


@override
int get hashCode => Object.hash(runtimeType,contextCallback);

@override
String toString() {
  return 'HelperBlocEvent.contextCallbackTriggered(contextCallback: $contextCallback)';
}


}

/// @nodoc
abstract mixin class $ContextCallbackTriggeredCopyWith<$Res> implements $HelperBlocEventCopyWith<$Res> {
  factory $ContextCallbackTriggeredCopyWith(ContextCallbackTriggered value, $Res Function(ContextCallbackTriggered) _then) = _$ContextCallbackTriggeredCopyWithImpl;
@useResult
$Res call({
 ContextCallback contextCallback
});




}
/// @nodoc
class _$ContextCallbackTriggeredCopyWithImpl<$Res>
    implements $ContextCallbackTriggeredCopyWith<$Res> {
  _$ContextCallbackTriggeredCopyWithImpl(this._self, this._then);

  final ContextCallbackTriggered _self;
  final $Res Function(ContextCallbackTriggered) _then;

/// Create a copy of HelperBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? contextCallback = null,}) {
  return _then(ContextCallbackTriggered(
null == contextCallback ? _self.contextCallback : contextCallback // ignore: cast_nullable_to_non_nullable
as ContextCallback,
  ));
}


}

/// @nodoc
mixin _$HelperBlocState {

 bool get isLoading; ContextCallback get contextCallback; BaseFailure? get failure; Object? get unknownError;
/// Create a copy of HelperBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HelperBlocStateCopyWith<HelperBlocState> get copyWith => _$HelperBlocStateCopyWithImpl<HelperBlocState>(this as HelperBlocState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HelperBlocState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.contextCallback, contextCallback) || other.contextCallback == contextCallback)&&(identical(other.failure, failure) || other.failure == failure)&&const DeepCollectionEquality().equals(other.unknownError, unknownError));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,contextCallback,failure,const DeepCollectionEquality().hash(unknownError));

@override
String toString() {
  return 'HelperBlocState(isLoading: $isLoading, contextCallback: $contextCallback, failure: $failure, unknownError: $unknownError)';
}


}

/// @nodoc
abstract mixin class $HelperBlocStateCopyWith<$Res>  {
  factory $HelperBlocStateCopyWith(HelperBlocState value, $Res Function(HelperBlocState) _then) = _$HelperBlocStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, ContextCallback contextCallback, BaseFailure? failure, Object? unknownError
});




}
/// @nodoc
class _$HelperBlocStateCopyWithImpl<$Res>
    implements $HelperBlocStateCopyWith<$Res> {
  _$HelperBlocStateCopyWithImpl(this._self, this._then);

  final HelperBlocState _self;
  final $Res Function(HelperBlocState) _then;

/// Create a copy of HelperBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? contextCallback = null,Object? failure = freezed,Object? unknownError = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,contextCallback: null == contextCallback ? _self.contextCallback : contextCallback // ignore: cast_nullable_to_non_nullable
as ContextCallback,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as BaseFailure?,unknownError: freezed == unknownError ? _self.unknownError : unknownError ,
  ));
}

}


/// Adds pattern-matching-related methods to [HelperBlocState].
extension HelperBlocStatePatterns on HelperBlocState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HelperBlocState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HelperBlocState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HelperBlocState value)  $default,){
final _that = this;
switch (_that) {
case _HelperBlocState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HelperBlocState value)?  $default,){
final _that = this;
switch (_that) {
case _HelperBlocState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  ContextCallback contextCallback,  BaseFailure? failure,  Object? unknownError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HelperBlocState() when $default != null:
return $default(_that.isLoading,_that.contextCallback,_that.failure,_that.unknownError);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  ContextCallback contextCallback,  BaseFailure? failure,  Object? unknownError)  $default,) {final _that = this;
switch (_that) {
case _HelperBlocState():
return $default(_that.isLoading,_that.contextCallback,_that.failure,_that.unknownError);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  ContextCallback contextCallback,  BaseFailure? failure,  Object? unknownError)?  $default,) {final _that = this;
switch (_that) {
case _HelperBlocState() when $default != null:
return $default(_that.isLoading,_that.contextCallback,_that.failure,_that.unknownError);case _:
  return null;

}
}

}

/// @nodoc


class _HelperBlocState implements HelperBlocState {
  const _HelperBlocState({required this.isLoading, required this.contextCallback, this.failure, this.unknownError});
  

@override final  bool isLoading;
@override final  ContextCallback contextCallback;
@override final  BaseFailure? failure;
@override final  Object? unknownError;

/// Create a copy of HelperBlocState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HelperBlocStateCopyWith<_HelperBlocState> get copyWith => __$HelperBlocStateCopyWithImpl<_HelperBlocState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HelperBlocState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.contextCallback, contextCallback) || other.contextCallback == contextCallback)&&(identical(other.failure, failure) || other.failure == failure)&&const DeepCollectionEquality().equals(other.unknownError, unknownError));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,contextCallback,failure,const DeepCollectionEquality().hash(unknownError));

@override
String toString() {
  return 'HelperBlocState(isLoading: $isLoading, contextCallback: $contextCallback, failure: $failure, unknownError: $unknownError)';
}


}

/// @nodoc
abstract mixin class _$HelperBlocStateCopyWith<$Res> implements $HelperBlocStateCopyWith<$Res> {
  factory _$HelperBlocStateCopyWith(_HelperBlocState value, $Res Function(_HelperBlocState) _then) = __$HelperBlocStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, ContextCallback contextCallback, BaseFailure? failure, Object? unknownError
});




}
/// @nodoc
class __$HelperBlocStateCopyWithImpl<$Res>
    implements _$HelperBlocStateCopyWith<$Res> {
  __$HelperBlocStateCopyWithImpl(this._self, this._then);

  final _HelperBlocState _self;
  final $Res Function(_HelperBlocState) _then;

/// Create a copy of HelperBlocState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? contextCallback = null,Object? failure = freezed,Object? unknownError = freezed,}) {
  return _then(_HelperBlocState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,contextCallback: null == contextCallback ? _self.contextCallback : contextCallback // ignore: cast_nullable_to_non_nullable
as ContextCallback,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as BaseFailure?,unknownError: freezed == unknownError ? _self.unknownError : unknownError ,
  ));
}


}

// dart format on
