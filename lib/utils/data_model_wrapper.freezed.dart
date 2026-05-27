// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_model_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DataModelWrapper<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataModelWrapper<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DataModelWrapper<$T>()';
}


}

/// @nodoc
class $DataModelWrapperCopyWith<T,$Res>  {
$DataModelWrapperCopyWith(DataModelWrapper<T> _, $Res Function(DataModelWrapper<T>) __);
}


/// Adds pattern-matching-related methods to [DataModelWrapper].
extension DataModelWrapperPatterns<T> on DataModelWrapper<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NetworkData<T> value)?  networkData,TResult Function( Empty<T> value)?  empty,TResult Function( IsLoading<T> value)?  isLoading,TResult Function( NetworkDataFailure<T> value)?  networkDataFailure,TResult Function( LocalDataFailure<T> value)?  localDataFailure,TResult Function( LocalData<T> value)?  localData,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NetworkData() when networkData != null:
return networkData(_that);case Empty() when empty != null:
return empty(_that);case IsLoading() when isLoading != null:
return isLoading(_that);case NetworkDataFailure() when networkDataFailure != null:
return networkDataFailure(_that);case LocalDataFailure() when localDataFailure != null:
return localDataFailure(_that);case LocalData() when localData != null:
return localData(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NetworkData<T> value)  networkData,required TResult Function( Empty<T> value)  empty,required TResult Function( IsLoading<T> value)  isLoading,required TResult Function( NetworkDataFailure<T> value)  networkDataFailure,required TResult Function( LocalDataFailure<T> value)  localDataFailure,required TResult Function( LocalData<T> value)  localData,}){
final _that = this;
switch (_that) {
case NetworkData():
return networkData(_that);case Empty():
return empty(_that);case IsLoading():
return isLoading(_that);case NetworkDataFailure():
return networkDataFailure(_that);case LocalDataFailure():
return localDataFailure(_that);case LocalData():
return localData(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NetworkData<T> value)?  networkData,TResult? Function( Empty<T> value)?  empty,TResult? Function( IsLoading<T> value)?  isLoading,TResult? Function( NetworkDataFailure<T> value)?  networkDataFailure,TResult? Function( LocalDataFailure<T> value)?  localDataFailure,TResult? Function( LocalData<T> value)?  localData,}){
final _that = this;
switch (_that) {
case NetworkData() when networkData != null:
return networkData(_that);case Empty() when empty != null:
return empty(_that);case IsLoading() when isLoading != null:
return isLoading(_that);case NetworkDataFailure() when networkDataFailure != null:
return networkDataFailure(_that);case LocalDataFailure() when localDataFailure != null:
return localDataFailure(_that);case LocalData() when localData != null:
return localData(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( T? data)?  networkData,TResult Function()?  empty,TResult Function( bool isLoading)?  isLoading,TResult Function( NetworkFailure networkFailure)?  networkDataFailure,TResult Function( LocalFailure localFailure)?  localDataFailure,TResult Function( T? data)?  localData,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NetworkData() when networkData != null:
return networkData(_that.data);case Empty() when empty != null:
return empty();case IsLoading() when isLoading != null:
return isLoading(_that.isLoading);case NetworkDataFailure() when networkDataFailure != null:
return networkDataFailure(_that.networkFailure);case LocalDataFailure() when localDataFailure != null:
return localDataFailure(_that.localFailure);case LocalData() when localData != null:
return localData(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( T? data)  networkData,required TResult Function()  empty,required TResult Function( bool isLoading)  isLoading,required TResult Function( NetworkFailure networkFailure)  networkDataFailure,required TResult Function( LocalFailure localFailure)  localDataFailure,required TResult Function( T? data)  localData,}) {final _that = this;
switch (_that) {
case NetworkData():
return networkData(_that.data);case Empty():
return empty();case IsLoading():
return isLoading(_that.isLoading);case NetworkDataFailure():
return networkDataFailure(_that.networkFailure);case LocalDataFailure():
return localDataFailure(_that.localFailure);case LocalData():
return localData(_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( T? data)?  networkData,TResult? Function()?  empty,TResult? Function( bool isLoading)?  isLoading,TResult? Function( NetworkFailure networkFailure)?  networkDataFailure,TResult? Function( LocalFailure localFailure)?  localDataFailure,TResult? Function( T? data)?  localData,}) {final _that = this;
switch (_that) {
case NetworkData() when networkData != null:
return networkData(_that.data);case Empty() when empty != null:
return empty();case IsLoading() when isLoading != null:
return isLoading(_that.isLoading);case NetworkDataFailure() when networkDataFailure != null:
return networkDataFailure(_that.networkFailure);case LocalDataFailure() when localDataFailure != null:
return localDataFailure(_that.localFailure);case LocalData() when localData != null:
return localData(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class NetworkData<T> extends DataModelWrapper<T> {
  const NetworkData({this.data}): super._();
  

 final  T? data;

/// Create a copy of DataModelWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkDataCopyWith<T, NetworkData<T>> get copyWith => _$NetworkDataCopyWithImpl<T, NetworkData<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkData<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'DataModelWrapper<$T>.networkData(data: $data)';
}


}

/// @nodoc
abstract mixin class $NetworkDataCopyWith<T,$Res> implements $DataModelWrapperCopyWith<T, $Res> {
  factory $NetworkDataCopyWith(NetworkData<T> value, $Res Function(NetworkData<T>) _then) = _$NetworkDataCopyWithImpl;
@useResult
$Res call({
 T? data
});




}
/// @nodoc
class _$NetworkDataCopyWithImpl<T,$Res>
    implements $NetworkDataCopyWith<T, $Res> {
  _$NetworkDataCopyWithImpl(this._self, this._then);

  final NetworkData<T> _self;
  final $Res Function(NetworkData<T>) _then;

/// Create a copy of DataModelWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(NetworkData<T>(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class Empty<T> extends DataModelWrapper<T> {
  const Empty(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Empty<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DataModelWrapper<$T>.empty()';
}


}




/// @nodoc


class IsLoading<T> extends DataModelWrapper<T> {
  const IsLoading({required this.isLoading}): super._();
  

 final  bool isLoading;

/// Create a copy of DataModelWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IsLoadingCopyWith<T, IsLoading<T>> get copyWith => _$IsLoadingCopyWithImpl<T, IsLoading<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IsLoading<T>&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading);

@override
String toString() {
  return 'DataModelWrapper<$T>.isLoading(isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $IsLoadingCopyWith<T,$Res> implements $DataModelWrapperCopyWith<T, $Res> {
  factory $IsLoadingCopyWith(IsLoading<T> value, $Res Function(IsLoading<T>) _then) = _$IsLoadingCopyWithImpl;
@useResult
$Res call({
 bool isLoading
});




}
/// @nodoc
class _$IsLoadingCopyWithImpl<T,$Res>
    implements $IsLoadingCopyWith<T, $Res> {
  _$IsLoadingCopyWithImpl(this._self, this._then);

  final IsLoading<T> _self;
  final $Res Function(IsLoading<T>) _then;

/// Create a copy of DataModelWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isLoading = null,}) {
  return _then(IsLoading<T>(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class NetworkDataFailure<T> extends DataModelWrapper<T> {
  const NetworkDataFailure({required this.networkFailure}): super._();
  

 final  NetworkFailure networkFailure;

/// Create a copy of DataModelWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkDataFailureCopyWith<T, NetworkDataFailure<T>> get copyWith => _$NetworkDataFailureCopyWithImpl<T, NetworkDataFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkDataFailure<T>&&(identical(other.networkFailure, networkFailure) || other.networkFailure == networkFailure));
}


@override
int get hashCode => Object.hash(runtimeType,networkFailure);

@override
String toString() {
  return 'DataModelWrapper<$T>.networkDataFailure(networkFailure: $networkFailure)';
}


}

/// @nodoc
abstract mixin class $NetworkDataFailureCopyWith<T,$Res> implements $DataModelWrapperCopyWith<T, $Res> {
  factory $NetworkDataFailureCopyWith(NetworkDataFailure<T> value, $Res Function(NetworkDataFailure<T>) _then) = _$NetworkDataFailureCopyWithImpl;
@useResult
$Res call({
 NetworkFailure networkFailure
});


$NetworkFailureCopyWith<$Res> get networkFailure;

}
/// @nodoc
class _$NetworkDataFailureCopyWithImpl<T,$Res>
    implements $NetworkDataFailureCopyWith<T, $Res> {
  _$NetworkDataFailureCopyWithImpl(this._self, this._then);

  final NetworkDataFailure<T> _self;
  final $Res Function(NetworkDataFailure<T>) _then;

/// Create a copy of DataModelWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? networkFailure = null,}) {
  return _then(NetworkDataFailure<T>(
networkFailure: null == networkFailure ? _self.networkFailure : networkFailure // ignore: cast_nullable_to_non_nullable
as NetworkFailure,
  ));
}

/// Create a copy of DataModelWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkFailureCopyWith<$Res> get networkFailure {
  
  return $NetworkFailureCopyWith<$Res>(_self.networkFailure, (value) {
    return _then(_self.copyWith(networkFailure: value));
  });
}
}

/// @nodoc


class LocalDataFailure<T> extends DataModelWrapper<T> {
  const LocalDataFailure({required this.localFailure}): super._();
  

 final  LocalFailure localFailure;

/// Create a copy of DataModelWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalDataFailureCopyWith<T, LocalDataFailure<T>> get copyWith => _$LocalDataFailureCopyWithImpl<T, LocalDataFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalDataFailure<T>&&(identical(other.localFailure, localFailure) || other.localFailure == localFailure));
}


@override
int get hashCode => Object.hash(runtimeType,localFailure);

@override
String toString() {
  return 'DataModelWrapper<$T>.localDataFailure(localFailure: $localFailure)';
}


}

/// @nodoc
abstract mixin class $LocalDataFailureCopyWith<T,$Res> implements $DataModelWrapperCopyWith<T, $Res> {
  factory $LocalDataFailureCopyWith(LocalDataFailure<T> value, $Res Function(LocalDataFailure<T>) _then) = _$LocalDataFailureCopyWithImpl;
@useResult
$Res call({
 LocalFailure localFailure
});


$LocalFailureCopyWith<$Res> get localFailure;

}
/// @nodoc
class _$LocalDataFailureCopyWithImpl<T,$Res>
    implements $LocalDataFailureCopyWith<T, $Res> {
  _$LocalDataFailureCopyWithImpl(this._self, this._then);

  final LocalDataFailure<T> _self;
  final $Res Function(LocalDataFailure<T>) _then;

/// Create a copy of DataModelWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? localFailure = null,}) {
  return _then(LocalDataFailure<T>(
localFailure: null == localFailure ? _self.localFailure : localFailure // ignore: cast_nullable_to_non_nullable
as LocalFailure,
  ));
}

/// Create a copy of DataModelWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalFailureCopyWith<$Res> get localFailure {
  
  return $LocalFailureCopyWith<$Res>(_self.localFailure, (value) {
    return _then(_self.copyWith(localFailure: value));
  });
}
}

/// @nodoc


class LocalData<T> extends DataModelWrapper<T> {
  const LocalData({this.data}): super._();
  

 final  T? data;

/// Create a copy of DataModelWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalDataCopyWith<T, LocalData<T>> get copyWith => _$LocalDataCopyWithImpl<T, LocalData<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalData<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'DataModelWrapper<$T>.localData(data: $data)';
}


}

/// @nodoc
abstract mixin class $LocalDataCopyWith<T,$Res> implements $DataModelWrapperCopyWith<T, $Res> {
  factory $LocalDataCopyWith(LocalData<T> value, $Res Function(LocalData<T>) _then) = _$LocalDataCopyWithImpl;
@useResult
$Res call({
 T? data
});




}
/// @nodoc
class _$LocalDataCopyWithImpl<T,$Res>
    implements $LocalDataCopyWith<T, $Res> {
  _$LocalDataCopyWithImpl(this._self, this._then);

  final LocalData<T> _self;
  final $Res Function(LocalData<T>) _then;

/// Create a copy of DataModelWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(LocalData<T>(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

// dart format on
