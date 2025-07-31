// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'changepassword.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChangePassword {

 String get current_password; String get new_password; String get new_password_confirmation;
/// Create a copy of ChangePassword
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePasswordCopyWith<ChangePassword> get copyWith => _$ChangePasswordCopyWithImpl<ChangePassword>(this as ChangePassword, _$identity);

  /// Serializes this ChangePassword to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePassword&&(identical(other.current_password, current_password) || other.current_password == current_password)&&(identical(other.new_password, new_password) || other.new_password == new_password)&&(identical(other.new_password_confirmation, new_password_confirmation) || other.new_password_confirmation == new_password_confirmation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current_password,new_password,new_password_confirmation);

@override
String toString() {
  return 'ChangePassword(current_password: $current_password, new_password: $new_password, new_password_confirmation: $new_password_confirmation)';
}


}

/// @nodoc
abstract mixin class $ChangePasswordCopyWith<$Res>  {
  factory $ChangePasswordCopyWith(ChangePassword value, $Res Function(ChangePassword) _then) = _$ChangePasswordCopyWithImpl;
@useResult
$Res call({
 String current_password, String new_password, String new_password_confirmation
});




}
/// @nodoc
class _$ChangePasswordCopyWithImpl<$Res>
    implements $ChangePasswordCopyWith<$Res> {
  _$ChangePasswordCopyWithImpl(this._self, this._then);

  final ChangePassword _self;
  final $Res Function(ChangePassword) _then;

/// Create a copy of ChangePassword
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? current_password = null,Object? new_password = null,Object? new_password_confirmation = null,}) {
  return _then(_self.copyWith(
current_password: null == current_password ? _self.current_password : current_password // ignore: cast_nullable_to_non_nullable
as String,new_password: null == new_password ? _self.new_password : new_password // ignore: cast_nullable_to_non_nullable
as String,new_password_confirmation: null == new_password_confirmation ? _self.new_password_confirmation : new_password_confirmation // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangePassword].
extension ChangePasswordPatterns on ChangePassword {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangePassword value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangePassword() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangePassword value)  $default,){
final _that = this;
switch (_that) {
case _ChangePassword():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangePassword value)?  $default,){
final _that = this;
switch (_that) {
case _ChangePassword() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String current_password,  String new_password,  String new_password_confirmation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangePassword() when $default != null:
return $default(_that.current_password,_that.new_password,_that.new_password_confirmation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String current_password,  String new_password,  String new_password_confirmation)  $default,) {final _that = this;
switch (_that) {
case _ChangePassword():
return $default(_that.current_password,_that.new_password,_that.new_password_confirmation);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String current_password,  String new_password,  String new_password_confirmation)?  $default,) {final _that = this;
switch (_that) {
case _ChangePassword() when $default != null:
return $default(_that.current_password,_that.new_password,_that.new_password_confirmation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChangePassword implements ChangePassword {
   _ChangePassword({required this.current_password, required this.new_password, required this.new_password_confirmation});
  factory _ChangePassword.fromJson(Map<String, dynamic> json) => _$ChangePasswordFromJson(json);

@override final  String current_password;
@override final  String new_password;
@override final  String new_password_confirmation;

/// Create a copy of ChangePassword
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangePasswordCopyWith<_ChangePassword> get copyWith => __$ChangePasswordCopyWithImpl<_ChangePassword>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangePasswordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePassword&&(identical(other.current_password, current_password) || other.current_password == current_password)&&(identical(other.new_password, new_password) || other.new_password == new_password)&&(identical(other.new_password_confirmation, new_password_confirmation) || other.new_password_confirmation == new_password_confirmation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current_password,new_password,new_password_confirmation);

@override
String toString() {
  return 'ChangePassword(current_password: $current_password, new_password: $new_password, new_password_confirmation: $new_password_confirmation)';
}


}

/// @nodoc
abstract mixin class _$ChangePasswordCopyWith<$Res> implements $ChangePasswordCopyWith<$Res> {
  factory _$ChangePasswordCopyWith(_ChangePassword value, $Res Function(_ChangePassword) _then) = __$ChangePasswordCopyWithImpl;
@override @useResult
$Res call({
 String current_password, String new_password, String new_password_confirmation
});




}
/// @nodoc
class __$ChangePasswordCopyWithImpl<$Res>
    implements _$ChangePasswordCopyWith<$Res> {
  __$ChangePasswordCopyWithImpl(this._self, this._then);

  final _ChangePassword _self;
  final $Res Function(_ChangePassword) _then;

/// Create a copy of ChangePassword
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? current_password = null,Object? new_password = null,Object? new_password_confirmation = null,}) {
  return _then(_ChangePassword(
current_password: null == current_password ? _self.current_password : current_password // ignore: cast_nullable_to_non_nullable
as String,new_password: null == new_password ? _self.new_password : new_password // ignore: cast_nullable_to_non_nullable
as String,new_password_confirmation: null == new_password_confirmation ? _self.new_password_confirmation : new_password_confirmation // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
