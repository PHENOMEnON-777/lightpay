// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sendmoney.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SendMoney {

 String get phone; double get amount;
/// Create a copy of SendMoney
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendMoneyCopyWith<SendMoney> get copyWith => _$SendMoneyCopyWithImpl<SendMoney>(this as SendMoney, _$identity);

  /// Serializes this SendMoney to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendMoney&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,amount);

@override
String toString() {
  return 'SendMoney(phone: $phone, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $SendMoneyCopyWith<$Res>  {
  factory $SendMoneyCopyWith(SendMoney value, $Res Function(SendMoney) _then) = _$SendMoneyCopyWithImpl;
@useResult
$Res call({
 String phone, double amount
});




}
/// @nodoc
class _$SendMoneyCopyWithImpl<$Res>
    implements $SendMoneyCopyWith<$Res> {
  _$SendMoneyCopyWithImpl(this._self, this._then);

  final SendMoney _self;
  final $Res Function(SendMoney) _then;

/// Create a copy of SendMoney
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = null,Object? amount = null,}) {
  return _then(_self.copyWith(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [SendMoney].
extension SendMoneyPatterns on SendMoney {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SendMoney value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendMoney() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SendMoney value)  $default,){
final _that = this;
switch (_that) {
case _SendMoney():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SendMoney value)?  $default,){
final _that = this;
switch (_that) {
case _SendMoney() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phone,  double amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendMoney() when $default != null:
return $default(_that.phone,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phone,  double amount)  $default,) {final _that = this;
switch (_that) {
case _SendMoney():
return $default(_that.phone,_that.amount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phone,  double amount)?  $default,) {final _that = this;
switch (_that) {
case _SendMoney() when $default != null:
return $default(_that.phone,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SendMoney implements SendMoney {
   _SendMoney({required this.phone, required this.amount});
  factory _SendMoney.fromJson(Map<String, dynamic> json) => _$SendMoneyFromJson(json);

@override final  String phone;
@override final  double amount;

/// Create a copy of SendMoney
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendMoneyCopyWith<_SendMoney> get copyWith => __$SendMoneyCopyWithImpl<_SendMoney>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SendMoneyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendMoney&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,amount);

@override
String toString() {
  return 'SendMoney(phone: $phone, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$SendMoneyCopyWith<$Res> implements $SendMoneyCopyWith<$Res> {
  factory _$SendMoneyCopyWith(_SendMoney value, $Res Function(_SendMoney) _then) = __$SendMoneyCopyWithImpl;
@override @useResult
$Res call({
 String phone, double amount
});




}
/// @nodoc
class __$SendMoneyCopyWithImpl<$Res>
    implements _$SendMoneyCopyWith<$Res> {
  __$SendMoneyCopyWithImpl(this._self, this._then);

  final _SendMoney _self;
  final $Res Function(_SendMoney) _then;

/// Create a copy of SendMoney
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? amount = null,}) {
  return _then(_SendMoney(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
