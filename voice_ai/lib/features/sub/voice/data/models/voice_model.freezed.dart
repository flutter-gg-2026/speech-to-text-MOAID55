// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VoiceModel {

 String get path; String get text;
/// Create a copy of VoiceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VoiceModelCopyWith<VoiceModel> get copyWith => _$VoiceModelCopyWithImpl<VoiceModel>(this as VoiceModel, _$identity);

  /// Serializes this VoiceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VoiceModel&&(identical(other.path, path) || other.path == path)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path,text);

@override
String toString() {
  return 'VoiceModel(path: $path, text: $text)';
}


}

/// @nodoc
abstract mixin class $VoiceModelCopyWith<$Res>  {
  factory $VoiceModelCopyWith(VoiceModel value, $Res Function(VoiceModel) _then) = _$VoiceModelCopyWithImpl;
@useResult
$Res call({
 String path, String text
});




}
/// @nodoc
class _$VoiceModelCopyWithImpl<$Res>
    implements $VoiceModelCopyWith<$Res> {
  _$VoiceModelCopyWithImpl(this._self, this._then);

  final VoiceModel _self;
  final $Res Function(VoiceModel) _then;

/// Create a copy of VoiceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? path = null,Object? text = null,}) {
  return _then(_self.copyWith(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VoiceModel].
extension VoiceModelPatterns on VoiceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VoiceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VoiceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VoiceModel value)  $default,){
final _that = this;
switch (_that) {
case _VoiceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VoiceModel value)?  $default,){
final _that = this;
switch (_that) {
case _VoiceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String path,  String text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VoiceModel() when $default != null:
return $default(_that.path,_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String path,  String text)  $default,) {final _that = this;
switch (_that) {
case _VoiceModel():
return $default(_that.path,_that.text);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String path,  String text)?  $default,) {final _that = this;
switch (_that) {
case _VoiceModel() when $default != null:
return $default(_that.path,_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VoiceModel implements VoiceModel {
  const _VoiceModel({required this.path, required this.text});
  factory _VoiceModel.fromJson(Map<String, dynamic> json) => _$VoiceModelFromJson(json);

@override final  String path;
@override final  String text;

/// Create a copy of VoiceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VoiceModelCopyWith<_VoiceModel> get copyWith => __$VoiceModelCopyWithImpl<_VoiceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VoiceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VoiceModel&&(identical(other.path, path) || other.path == path)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path,text);

@override
String toString() {
  return 'VoiceModel(path: $path, text: $text)';
}


}

/// @nodoc
abstract mixin class _$VoiceModelCopyWith<$Res> implements $VoiceModelCopyWith<$Res> {
  factory _$VoiceModelCopyWith(_VoiceModel value, $Res Function(_VoiceModel) _then) = __$VoiceModelCopyWithImpl;
@override @useResult
$Res call({
 String path, String text
});




}
/// @nodoc
class __$VoiceModelCopyWithImpl<$Res>
    implements _$VoiceModelCopyWith<$Res> {
  __$VoiceModelCopyWithImpl(this._self, this._then);

  final _VoiceModel _self;
  final $Res Function(_VoiceModel) _then;

/// Create a copy of VoiceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? text = null,}) {
  return _then(_VoiceModel(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
