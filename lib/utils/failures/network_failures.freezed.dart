// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NetworkFailure {

 dynamic get failure;
/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkFailureCopyWith<NetworkFailure> get copyWith => _$NetworkFailureCopyWithImpl<NetworkFailure>(this as NetworkFailure, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkFailure&&const DeepCollectionEquality().equals(other.failure, failure));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failure));

@override
String toString() {
  return 'NetworkFailure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $NetworkFailureCopyWith<$Res>  {
  factory $NetworkFailureCopyWith(NetworkFailure value, $Res Function(NetworkFailure) _then) = _$NetworkFailureCopyWithImpl;
@useResult
$Res call({
 dynamic failure
});




}
/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._self, this._then);

  final NetworkFailure _self;
  final $Res Function(NetworkFailure) _then;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? failure = freezed,}) {
  return _then(_self.copyWith(
failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [NetworkFailure].
extension NetworkFailurePatterns on NetworkFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ServerFailure value)?  serverFailure,TResult Function( RequestCancelled value)?  requestCancelled,TResult Function( CustomFailure value)?  customFailure,TResult Function( NoInternetFailure value)?  noInternetFailure,TResult Function( UnauthenticatedFailure value)?  unauthenticatedFailure,TResult Function( UnknownError value)?  unknownError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ServerFailure() when serverFailure != null:
return serverFailure(_that);case RequestCancelled() when requestCancelled != null:
return requestCancelled(_that);case CustomFailure() when customFailure != null:
return customFailure(_that);case NoInternetFailure() when noInternetFailure != null:
return noInternetFailure(_that);case UnauthenticatedFailure() when unauthenticatedFailure != null:
return unauthenticatedFailure(_that);case UnknownError() when unknownError != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ServerFailure value)  serverFailure,required TResult Function( RequestCancelled value)  requestCancelled,required TResult Function( CustomFailure value)  customFailure,required TResult Function( NoInternetFailure value)  noInternetFailure,required TResult Function( UnauthenticatedFailure value)  unauthenticatedFailure,required TResult Function( UnknownError value)  unknownError,}){
final _that = this;
switch (_that) {
case ServerFailure():
return serverFailure(_that);case RequestCancelled():
return requestCancelled(_that);case CustomFailure():
return customFailure(_that);case NoInternetFailure():
return noInternetFailure(_that);case UnauthenticatedFailure():
return unauthenticatedFailure(_that);case UnknownError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ServerFailure value)?  serverFailure,TResult? Function( RequestCancelled value)?  requestCancelled,TResult? Function( CustomFailure value)?  customFailure,TResult? Function( NoInternetFailure value)?  noInternetFailure,TResult? Function( UnauthenticatedFailure value)?  unauthenticatedFailure,TResult? Function( UnknownError value)?  unknownError,}){
final _that = this;
switch (_that) {
case ServerFailure() when serverFailure != null:
return serverFailure(_that);case RequestCancelled() when requestCancelled != null:
return requestCancelled(_that);case CustomFailure() when customFailure != null:
return customFailure(_that);case NoInternetFailure() when noInternetFailure != null:
return noInternetFailure(_that);case UnauthenticatedFailure() when unauthenticatedFailure != null:
return unauthenticatedFailure(_that);case UnknownError() when unknownError != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? message,  dynamic failure)?  serverFailure,TResult Function( String? message,  dynamic failure)?  requestCancelled,TResult Function( String message,  dynamic failure)?  customFailure,TResult Function( String? message,  dynamic failure)?  noInternetFailure,TResult Function( String? message,  dynamic failure)?  unauthenticatedFailure,TResult Function( dynamic error,  dynamic failure)?  unknownError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ServerFailure() when serverFailure != null:
return serverFailure(_that.message,_that.failure);case RequestCancelled() when requestCancelled != null:
return requestCancelled(_that.message,_that.failure);case CustomFailure() when customFailure != null:
return customFailure(_that.message,_that.failure);case NoInternetFailure() when noInternetFailure != null:
return noInternetFailure(_that.message,_that.failure);case UnauthenticatedFailure() when unauthenticatedFailure != null:
return unauthenticatedFailure(_that.message,_that.failure);case UnknownError() when unknownError != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? message,  dynamic failure)  serverFailure,required TResult Function( String? message,  dynamic failure)  requestCancelled,required TResult Function( String message,  dynamic failure)  customFailure,required TResult Function( String? message,  dynamic failure)  noInternetFailure,required TResult Function( String? message,  dynamic failure)  unauthenticatedFailure,required TResult Function( dynamic error,  dynamic failure)  unknownError,}) {final _that = this;
switch (_that) {
case ServerFailure():
return serverFailure(_that.message,_that.failure);case RequestCancelled():
return requestCancelled(_that.message,_that.failure);case CustomFailure():
return customFailure(_that.message,_that.failure);case NoInternetFailure():
return noInternetFailure(_that.message,_that.failure);case UnauthenticatedFailure():
return unauthenticatedFailure(_that.message,_that.failure);case UnknownError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? message,  dynamic failure)?  serverFailure,TResult? Function( String? message,  dynamic failure)?  requestCancelled,TResult? Function( String message,  dynamic failure)?  customFailure,TResult? Function( String? message,  dynamic failure)?  noInternetFailure,TResult? Function( String? message,  dynamic failure)?  unauthenticatedFailure,TResult? Function( dynamic error,  dynamic failure)?  unknownError,}) {final _that = this;
switch (_that) {
case ServerFailure() when serverFailure != null:
return serverFailure(_that.message,_that.failure);case RequestCancelled() when requestCancelled != null:
return requestCancelled(_that.message,_that.failure);case CustomFailure() when customFailure != null:
return customFailure(_that.message,_that.failure);case NoInternetFailure() when noInternetFailure != null:
return noInternetFailure(_that.message,_that.failure);case UnauthenticatedFailure() when unauthenticatedFailure != null:
return unauthenticatedFailure(_that.message,_that.failure);case UnknownError() when unknownError != null:
return unknownError(_that.error,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class ServerFailure extends NetworkFailure {
  const ServerFailure([this.message, this.failure]): super._();
  

 final  String? message;
@override final  dynamic failure;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerFailureCopyWith<ServerFailure> get copyWith => _$ServerFailureCopyWithImpl<ServerFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerFailure&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.failure, failure));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(failure));

@override
String toString() {
  return 'NetworkFailure.serverFailure(message: $message, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $ServerFailureCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(ServerFailure value, $Res Function(ServerFailure) _then) = _$ServerFailureCopyWithImpl;
@override @useResult
$Res call({
 String? message, dynamic failure
});




}
/// @nodoc
class _$ServerFailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(this._self, this._then);

  final ServerFailure _self;
  final $Res Function(ServerFailure) _then;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? failure = freezed,}) {
  return _then(ServerFailure(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc


class RequestCancelled extends NetworkFailure {
  const RequestCancelled([this.message, this.failure]): super._();
  

 final  String? message;
@override final  dynamic failure;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestCancelledCopyWith<RequestCancelled> get copyWith => _$RequestCancelledCopyWithImpl<RequestCancelled>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestCancelled&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.failure, failure));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(failure));

@override
String toString() {
  return 'NetworkFailure.requestCancelled(message: $message, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $RequestCancelledCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
  factory $RequestCancelledCopyWith(RequestCancelled value, $Res Function(RequestCancelled) _then) = _$RequestCancelledCopyWithImpl;
@override @useResult
$Res call({
 String? message, dynamic failure
});




}
/// @nodoc
class _$RequestCancelledCopyWithImpl<$Res>
    implements $RequestCancelledCopyWith<$Res> {
  _$RequestCancelledCopyWithImpl(this._self, this._then);

  final RequestCancelled _self;
  final $Res Function(RequestCancelled) _then;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? failure = freezed,}) {
  return _then(RequestCancelled(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc


class CustomFailure extends NetworkFailure {
  const CustomFailure(this.message, [this.failure]): super._();
  

 final  String message;
@override final  dynamic failure;

/// Create a copy of NetworkFailure
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
  return 'NetworkFailure.customFailure(message: $message, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $CustomFailureCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
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

/// Create a copy of NetworkFailure
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


class NoInternetFailure extends NetworkFailure {
  const NoInternetFailure([this.message, this.failure]): super._();
  

 final  String? message;
@override final  dynamic failure;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoInternetFailureCopyWith<NoInternetFailure> get copyWith => _$NoInternetFailureCopyWithImpl<NoInternetFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoInternetFailure&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.failure, failure));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(failure));

@override
String toString() {
  return 'NetworkFailure.noInternetFailure(message: $message, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $NoInternetFailureCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
  factory $NoInternetFailureCopyWith(NoInternetFailure value, $Res Function(NoInternetFailure) _then) = _$NoInternetFailureCopyWithImpl;
@override @useResult
$Res call({
 String? message, dynamic failure
});




}
/// @nodoc
class _$NoInternetFailureCopyWithImpl<$Res>
    implements $NoInternetFailureCopyWith<$Res> {
  _$NoInternetFailureCopyWithImpl(this._self, this._then);

  final NoInternetFailure _self;
  final $Res Function(NoInternetFailure) _then;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? failure = freezed,}) {
  return _then(NoInternetFailure(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc


class UnauthenticatedFailure extends NetworkFailure {
  const UnauthenticatedFailure([this.message, this.failure]): super._();
  

 final  String? message;
@override final  dynamic failure;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnauthenticatedFailureCopyWith<UnauthenticatedFailure> get copyWith => _$UnauthenticatedFailureCopyWithImpl<UnauthenticatedFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnauthenticatedFailure&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.failure, failure));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(failure));

@override
String toString() {
  return 'NetworkFailure.unauthenticatedFailure(message: $message, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $UnauthenticatedFailureCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
  factory $UnauthenticatedFailureCopyWith(UnauthenticatedFailure value, $Res Function(UnauthenticatedFailure) _then) = _$UnauthenticatedFailureCopyWithImpl;
@override @useResult
$Res call({
 String? message, dynamic failure
});




}
/// @nodoc
class _$UnauthenticatedFailureCopyWithImpl<$Res>
    implements $UnauthenticatedFailureCopyWith<$Res> {
  _$UnauthenticatedFailureCopyWithImpl(this._self, this._then);

  final UnauthenticatedFailure _self;
  final $Res Function(UnauthenticatedFailure) _then;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? failure = freezed,}) {
  return _then(UnauthenticatedFailure(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc


class UnknownError extends NetworkFailure {
  const UnknownError(this.error, [this.failure]): super._();
  

 final  dynamic error;
@override final  dynamic failure;

/// Create a copy of NetworkFailure
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
  return 'NetworkFailure.unknownError(error: $error, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $UnknownErrorCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
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

/// Create a copy of NetworkFailure
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
