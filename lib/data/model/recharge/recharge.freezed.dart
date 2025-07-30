// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recharge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Recharge {

 double get amount; String get phone; String get provider;
/// Create a copy of Recharge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RechargeCopyWith<Recharge> get copyWith => _$RechargeCopyWithImpl<Recharge>(this as Recharge, _$identity);

  /// Serializes this Recharge to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Recharge&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.provider, provider) || other.provider == provider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,phone,provider);

@override
String toString() {
  return 'Recharge(amount: $amount, phone: $phone, provider: $provider)';
}


}

/// @nodoc
abstract mixin class $RechargeCopyWith<$Res>  {
  factory $RechargeCopyWith(Recharge value, $Res Function(Recharge) _then) = _$RechargeCopyWithImpl;
@useResult
$Res call({
 double amount, String phone, String provider
});




}
/// @nodoc
class _$RechargeCopyWithImpl<$Res>
    implements $RechargeCopyWith<$Res> {
  _$RechargeCopyWithImpl(this._self, this._then);

  final Recharge _self;
  final $Res Function(Recharge) _then;

/// Create a copy of Recharge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? phone = null,Object? provider = null,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Recharge].
extension RechargePatterns on Recharge {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Recharge value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Recharge() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Recharge value)  $default,){
final _that = this;
switch (_that) {
case _Recharge():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Recharge value)?  $default,){
final _that = this;
switch (_that) {
case _Recharge() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double amount,  String phone,  String provider)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Recharge() when $default != null:
return $default(_that.amount,_that.phone,_that.provider);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double amount,  String phone,  String provider)  $default,) {final _that = this;
switch (_that) {
case _Recharge():
return $default(_that.amount,_that.phone,_that.provider);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double amount,  String phone,  String provider)?  $default,) {final _that = this;
switch (_that) {
case _Recharge() when $default != null:
return $default(_that.amount,_that.phone,_that.provider);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Recharge implements Recharge {
   _Recharge({required this.amount, required this.phone, required this.provider});
  factory _Recharge.fromJson(Map<String, dynamic> json) => _$RechargeFromJson(json);

@override final  double amount;
@override final  String phone;
@override final  String provider;

/// Create a copy of Recharge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RechargeCopyWith<_Recharge> get copyWith => __$RechargeCopyWithImpl<_Recharge>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RechargeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Recharge&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.provider, provider) || other.provider == provider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,phone,provider);

@override
String toString() {
  return 'Recharge(amount: $amount, phone: $phone, provider: $provider)';
}


}

/// @nodoc
abstract mixin class _$RechargeCopyWith<$Res> implements $RechargeCopyWith<$Res> {
  factory _$RechargeCopyWith(_Recharge value, $Res Function(_Recharge) _then) = __$RechargeCopyWithImpl;
@override @useResult
$Res call({
 double amount, String phone, String provider
});




}
/// @nodoc
class __$RechargeCopyWithImpl<$Res>
    implements _$RechargeCopyWith<$Res> {
  __$RechargeCopyWithImpl(this._self, this._then);

  final _Recharge _self;
  final $Res Function(_Recharge) _then;

/// Create a copy of Recharge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? phone = null,Object? provider = null,}) {
  return _then(_Recharge(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
