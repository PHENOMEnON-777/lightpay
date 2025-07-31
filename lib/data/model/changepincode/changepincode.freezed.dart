// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'changepincode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChangePinCode {

 String get current_pin_code; String get new_pin_code; String get new_pin_code_confirmation;
/// Create a copy of ChangePinCode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePinCodeCopyWith<ChangePinCode> get copyWith => _$ChangePinCodeCopyWithImpl<ChangePinCode>(this as ChangePinCode, _$identity);

  /// Serializes this ChangePinCode to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePinCode&&(identical(other.current_pin_code, current_pin_code) || other.current_pin_code == current_pin_code)&&(identical(other.new_pin_code, new_pin_code) || other.new_pin_code == new_pin_code)&&(identical(other.new_pin_code_confirmation, new_pin_code_confirmation) || other.new_pin_code_confirmation == new_pin_code_confirmation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current_pin_code,new_pin_code,new_pin_code_confirmation);

@override
String toString() {
  return 'ChangePinCode(current_pin_code: $current_pin_code, new_pin_code: $new_pin_code, new_pin_code_confirmation: $new_pin_code_confirmation)';
}


}

/// @nodoc
abstract mixin class $ChangePinCodeCopyWith<$Res>  {
  factory $ChangePinCodeCopyWith(ChangePinCode value, $Res Function(ChangePinCode) _then) = _$ChangePinCodeCopyWithImpl;
@useResult
$Res call({
 String current_pin_code, String new_pin_code, String new_pin_code_confirmation
});




}
/// @nodoc
class _$ChangePinCodeCopyWithImpl<$Res>
    implements $ChangePinCodeCopyWith<$Res> {
  _$ChangePinCodeCopyWithImpl(this._self, this._then);

  final ChangePinCode _self;
  final $Res Function(ChangePinCode) _then;

/// Create a copy of ChangePinCode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? current_pin_code = null,Object? new_pin_code = null,Object? new_pin_code_confirmation = null,}) {
  return _then(_self.copyWith(
current_pin_code: null == current_pin_code ? _self.current_pin_code : current_pin_code // ignore: cast_nullable_to_non_nullable
as String,new_pin_code: null == new_pin_code ? _self.new_pin_code : new_pin_code // ignore: cast_nullable_to_non_nullable
as String,new_pin_code_confirmation: null == new_pin_code_confirmation ? _self.new_pin_code_confirmation : new_pin_code_confirmation // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangePinCode].
extension ChangePinCodePatterns on ChangePinCode {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangePinCode value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangePinCode() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangePinCode value)  $default,){
final _that = this;
switch (_that) {
case _ChangePinCode():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangePinCode value)?  $default,){
final _that = this;
switch (_that) {
case _ChangePinCode() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String current_pin_code,  String new_pin_code,  String new_pin_code_confirmation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangePinCode() when $default != null:
return $default(_that.current_pin_code,_that.new_pin_code,_that.new_pin_code_confirmation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String current_pin_code,  String new_pin_code,  String new_pin_code_confirmation)  $default,) {final _that = this;
switch (_that) {
case _ChangePinCode():
return $default(_that.current_pin_code,_that.new_pin_code,_that.new_pin_code_confirmation);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String current_pin_code,  String new_pin_code,  String new_pin_code_confirmation)?  $default,) {final _that = this;
switch (_that) {
case _ChangePinCode() when $default != null:
return $default(_that.current_pin_code,_that.new_pin_code,_that.new_pin_code_confirmation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChangePinCode implements ChangePinCode {
   _ChangePinCode({required this.current_pin_code, required this.new_pin_code, required this.new_pin_code_confirmation});
  factory _ChangePinCode.fromJson(Map<String, dynamic> json) => _$ChangePinCodeFromJson(json);

@override final  String current_pin_code;
@override final  String new_pin_code;
@override final  String new_pin_code_confirmation;

/// Create a copy of ChangePinCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangePinCodeCopyWith<_ChangePinCode> get copyWith => __$ChangePinCodeCopyWithImpl<_ChangePinCode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangePinCodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePinCode&&(identical(other.current_pin_code, current_pin_code) || other.current_pin_code == current_pin_code)&&(identical(other.new_pin_code, new_pin_code) || other.new_pin_code == new_pin_code)&&(identical(other.new_pin_code_confirmation, new_pin_code_confirmation) || other.new_pin_code_confirmation == new_pin_code_confirmation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current_pin_code,new_pin_code,new_pin_code_confirmation);

@override
String toString() {
  return 'ChangePinCode(current_pin_code: $current_pin_code, new_pin_code: $new_pin_code, new_pin_code_confirmation: $new_pin_code_confirmation)';
}


}

/// @nodoc
abstract mixin class _$ChangePinCodeCopyWith<$Res> implements $ChangePinCodeCopyWith<$Res> {
  factory _$ChangePinCodeCopyWith(_ChangePinCode value, $Res Function(_ChangePinCode) _then) = __$ChangePinCodeCopyWithImpl;
@override @useResult
$Res call({
 String current_pin_code, String new_pin_code, String new_pin_code_confirmation
});




}
/// @nodoc
class __$ChangePinCodeCopyWithImpl<$Res>
    implements _$ChangePinCodeCopyWith<$Res> {
  __$ChangePinCodeCopyWithImpl(this._self, this._then);

  final _ChangePinCode _self;
  final $Res Function(_ChangePinCode) _then;

/// Create a copy of ChangePinCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? current_pin_code = null,Object? new_pin_code = null,Object? new_pin_code_confirmation = null,}) {
  return _then(_ChangePinCode(
current_pin_code: null == current_pin_code ? _self.current_pin_code : current_pin_code // ignore: cast_nullable_to_non_nullable
as String,new_pin_code: null == new_pin_code ? _self.new_pin_code : new_pin_code // ignore: cast_nullable_to_non_nullable
as String,new_pin_code_confirmation: null == new_pin_code_confirmation ? _self.new_pin_code_confirmation : new_pin_code_confirmation // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
