// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocalFailure {

 dynamic get failure;
/// Create a copy of LocalFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalFailureCopyWith<LocalFailure> get copyWith => _$LocalFailureCopyWithImpl<LocalFailure>(this as LocalFailure, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalFailure&&const DeepCollectionEquality().equals(other.failure, failure));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failure));

@override
String toString() {
  return 'LocalFailure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $LocalFailureCopyWith<$Res>  {
  factory $LocalFailureCopyWith(LocalFailure value, $Res Function(LocalFailure) _then) = _$LocalFailureCopyWithImpl;
@useResult
$Res call({
 dynamic failure
});




}
/// @nodoc
class _$LocalFailureCopyWithImpl<$Res>
    implements $LocalFailureCopyWith<$Res> {
  _$LocalFailureCopyWithImpl(this._self, this._then);

  final LocalFailure _self;
  final $Res Function(LocalFailure) _then;

/// Create a copy of LocalFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? failure = freezed,}) {
  return _then(_self.copyWith(
failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [LocalFailure].
extension LocalFailurePatterns on LocalFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CustomFailure value)?  customFailure,TResult Function( UnknownError value)?  unknownError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CustomFailure() when customFailure != null:
return customFailure(_that);case UnknownError() when unknownError != null:
return unknownError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CustomFailure value)  customFailure,required TResult Function( UnknownError value)  unknownError,}){
final _that = this;
switch (_that) {
case CustomFailure():
return customFailure(_that);case UnknownError():
return unknownError(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CustomFailure value)?  customFailure,TResult? Function( UnknownError value)?  unknownError,}){
final _that = this;
switch (_that) {
case CustomFailure() when customFailure != null:
return customFailure(_that);case UnknownError() when unknownError != null:
return unknownError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message,  dynamic failure)?  customFailure,TResult Function( dynamic error,  dynamic failure)?  unknownError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CustomFailure() when customFailure != null:
return customFailure(_that.message,_that.failure);case UnknownError() when unknownError != null:
return unknownError(_that.error,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message,  dynamic failure)  customFailure,required TResult Function( dynamic error,  dynamic failure)  unknownError,}) {final _that = this;
switch (_that) {
case CustomFailure():
return customFailure(_that.message,_that.failure);case UnknownError():
return unknownError(_that.error,_that.failure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message,  dynamic failure)?  customFailure,TResult? Function( dynamic error,  dynamic failure)?  unknownError,}) {final _that = this;
switch (_that) {
case CustomFailure() when customFailure != null:
return customFailure(_that.message,_that.failure);case UnknownError() when unknownError != null:
return unknownError(_that.error,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class CustomFailure extends LocalFailure {
  const CustomFailure(this.message, [this.failure]): super._();
  

 final  String message;
@override final  dynamic failure;

/// Create a copy of LocalFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomFailureCopyWith<CustomFailure> get copyWith => _$CustomFailureCopyWithImpl<CustomFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomFailure&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.failure, failure));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(failure));

@override
String toString() {
  return 'LocalFailure.customFailure(message: $message, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $CustomFailureCopyWith<$Res> implements $LocalFailureCopyWith<$Res> {
  factory $CustomFailureCopyWith(CustomFailure value, $Res Function(CustomFailure) _then) = _$CustomFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, dynamic failure
});




}
/// @nodoc
class _$CustomFailureCopyWithImpl<$Res>
    implements $CustomFailureCopyWith<$Res> {
  _$CustomFailureCopyWithImpl(this._self, this._then);

  final CustomFailure _self;
  final $Res Function(CustomFailure) _then;

/// Create a copy of LocalFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? failure = freezed,}) {
  return _then(CustomFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc


class UnknownError extends LocalFailure {
  const UnknownError(this.error, [this.failure]): super._();
  

 final  dynamic error;
@override final  dynamic failure;

/// Create a copy of LocalFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnknownErrorCopyWith<UnknownError> get copyWith => _$UnknownErrorCopyWithImpl<UnknownError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownError&&const DeepCollectionEquality().equals(other.error, error)&&const DeepCollectionEquality().equals(other.failure, failure));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error),const DeepCollectionEquality().hash(failure));

@override
String toString() {
  return 'LocalFailure.unknownError(error: $error, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $UnknownErrorCopyWith<$Res> implements $LocalFailureCopyWith<$Res> {
  factory $UnknownErrorCopyWith(UnknownError value, $Res Function(UnknownError) _then) = _$UnknownErrorCopyWithImpl;
@override @useResult
$Res call({
 dynamic error, dynamic failure
});




}
/// @nodoc
class _$UnknownErrorCopyWithImpl<$Res>
    implements $UnknownErrorCopyWith<$Res> {
  _$UnknownErrorCopyWithImpl(this._self, this._then);

  final UnknownError _self;
  final $Res Function(UnknownError) _then;

/// Create a copy of LocalFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = freezed,Object? failure = freezed,}) {
  return _then(UnknownError(
freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as dynamic,freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
