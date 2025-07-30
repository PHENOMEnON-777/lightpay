// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Recharge_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RechargeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RechargeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RechargeState()';
}


}

/// @nodoc
class $RechargeStateCopyWith<$Res>  {
$RechargeStateCopyWith(RechargeState _, $Res Function(RechargeState) __);
}


/// Adds pattern-matching-related methods to [RechargeState].
extension RechargeStatePatterns on RechargeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( LoadingRecharge value)?  loadingrecharge,TResult Function( RechargedSuccessfully value)?  rechargesuccessfully,TResult Function( RechargeFailed value)?  rechargeFailed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingRecharge() when loadingrecharge != null:
return loadingrecharge(_that);case RechargedSuccessfully() when rechargesuccessfully != null:
return rechargesuccessfully(_that);case RechargeFailed() when rechargeFailed != null:
return rechargeFailed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( LoadingRecharge value)  loadingrecharge,required TResult Function( RechargedSuccessfully value)  rechargesuccessfully,required TResult Function( RechargeFailed value)  rechargeFailed,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case LoadingRecharge():
return loadingrecharge(_that);case RechargedSuccessfully():
return rechargesuccessfully(_that);case RechargeFailed():
return rechargeFailed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( LoadingRecharge value)?  loadingrecharge,TResult? Function( RechargedSuccessfully value)?  rechargesuccessfully,TResult? Function( RechargeFailed value)?  rechargeFailed,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingRecharge() when loadingrecharge != null:
return loadingrecharge(_that);case RechargedSuccessfully() when rechargesuccessfully != null:
return rechargesuccessfully(_that);case RechargeFailed() when rechargeFailed != null:
return rechargeFailed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingrecharge,TResult Function( AppResponse<Map<String, dynamic>> recharge)?  rechargesuccessfully,TResult Function( dynamic errormessage)?  rechargeFailed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingRecharge() when loadingrecharge != null:
return loadingrecharge();case RechargedSuccessfully() when rechargesuccessfully != null:
return rechargesuccessfully(_that.recharge);case RechargeFailed() when rechargeFailed != null:
return rechargeFailed(_that.errormessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingrecharge,required TResult Function( AppResponse<Map<String, dynamic>> recharge)  rechargesuccessfully,required TResult Function( dynamic errormessage)  rechargeFailed,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case LoadingRecharge():
return loadingrecharge();case RechargedSuccessfully():
return rechargesuccessfully(_that.recharge);case RechargeFailed():
return rechargeFailed(_that.errormessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingrecharge,TResult? Function( AppResponse<Map<String, dynamic>> recharge)?  rechargesuccessfully,TResult? Function( dynamic errormessage)?  rechargeFailed,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingRecharge() when loadingrecharge != null:
return loadingrecharge();case RechargedSuccessfully() when rechargesuccessfully != null:
return rechargesuccessfully(_that.recharge);case RechargeFailed() when rechargeFailed != null:
return rechargeFailed(_that.errormessage);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements RechargeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RechargeState.initial()';
}


}




/// @nodoc


class LoadingRecharge implements RechargeState {
  const LoadingRecharge();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingRecharge);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RechargeState.loadingrecharge()';
}


}




/// @nodoc


class RechargedSuccessfully implements RechargeState {
  const RechargedSuccessfully({required this.recharge});
  

 final  AppResponse<Map<String, dynamic>> recharge;

/// Create a copy of RechargeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RechargedSuccessfullyCopyWith<RechargedSuccessfully> get copyWith => _$RechargedSuccessfullyCopyWithImpl<RechargedSuccessfully>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RechargedSuccessfully&&(identical(other.recharge, recharge) || other.recharge == recharge));
}


@override
int get hashCode => Object.hash(runtimeType,recharge);

@override
String toString() {
  return 'RechargeState.rechargesuccessfully(recharge: $recharge)';
}


}

/// @nodoc
abstract mixin class $RechargedSuccessfullyCopyWith<$Res> implements $RechargeStateCopyWith<$Res> {
  factory $RechargedSuccessfullyCopyWith(RechargedSuccessfully value, $Res Function(RechargedSuccessfully) _then) = _$RechargedSuccessfullyCopyWithImpl;
@useResult
$Res call({
 AppResponse<Map<String, dynamic>> recharge
});




}
/// @nodoc
class _$RechargedSuccessfullyCopyWithImpl<$Res>
    implements $RechargedSuccessfullyCopyWith<$Res> {
  _$RechargedSuccessfullyCopyWithImpl(this._self, this._then);

  final RechargedSuccessfully _self;
  final $Res Function(RechargedSuccessfully) _then;

/// Create a copy of RechargeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? recharge = null,}) {
  return _then(RechargedSuccessfully(
recharge: null == recharge ? _self.recharge : recharge // ignore: cast_nullable_to_non_nullable
as AppResponse<Map<String, dynamic>>,
  ));
}


}

/// @nodoc


class RechargeFailed implements RechargeState {
  const RechargeFailed({required this.errormessage});
  

 final  dynamic errormessage;

/// Create a copy of RechargeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RechargeFailedCopyWith<RechargeFailed> get copyWith => _$RechargeFailedCopyWithImpl<RechargeFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RechargeFailed&&const DeepCollectionEquality().equals(other.errormessage, errormessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(errormessage));

@override
String toString() {
  return 'RechargeState.rechargeFailed(errormessage: $errormessage)';
}


}

/// @nodoc
abstract mixin class $RechargeFailedCopyWith<$Res> implements $RechargeStateCopyWith<$Res> {
  factory $RechargeFailedCopyWith(RechargeFailed value, $Res Function(RechargeFailed) _then) = _$RechargeFailedCopyWithImpl;
@useResult
$Res call({
 dynamic errormessage
});




}
/// @nodoc
class _$RechargeFailedCopyWithImpl<$Res>
    implements $RechargeFailedCopyWith<$Res> {
  _$RechargeFailedCopyWithImpl(this._self, this._then);

  final RechargeFailed _self;
  final $Res Function(RechargeFailed) _then;

/// Create a copy of RechargeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errormessage = freezed,}) {
  return _then(RechargeFailed(
errormessage: freezed == errormessage ? _self.errormessage : errormessage // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc
mixin _$RechargeEvent {

 Recharge get recharge;
/// Create a copy of RechargeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RechargeEventCopyWith<RechargeEvent> get copyWith => _$RechargeEventCopyWithImpl<RechargeEvent>(this as RechargeEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RechargeEvent&&(identical(other.recharge, recharge) || other.recharge == recharge));
}


@override
int get hashCode => Object.hash(runtimeType,recharge);

@override
String toString() {
  return 'RechargeEvent(recharge: $recharge)';
}


}

/// @nodoc
abstract mixin class $RechargeEventCopyWith<$Res>  {
  factory $RechargeEventCopyWith(RechargeEvent value, $Res Function(RechargeEvent) _then) = _$RechargeEventCopyWithImpl;
@useResult
$Res call({
 Recharge recharge
});


$RechargeCopyWith<$Res> get recharge;

}
/// @nodoc
class _$RechargeEventCopyWithImpl<$Res>
    implements $RechargeEventCopyWith<$Res> {
  _$RechargeEventCopyWithImpl(this._self, this._then);

  final RechargeEvent _self;
  final $Res Function(RechargeEvent) _then;

/// Create a copy of RechargeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recharge = null,}) {
  return _then(_self.copyWith(
recharge: null == recharge ? _self.recharge : recharge // ignore: cast_nullable_to_non_nullable
as Recharge,
  ));
}
/// Create a copy of RechargeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RechargeCopyWith<$Res> get recharge {
  
  return $RechargeCopyWith<$Res>(_self.recharge, (value) {
    return _then(_self.copyWith(recharge: value));
  });
}
}


/// Adds pattern-matching-related methods to [RechargeEvent].
extension RechargeEventPatterns on RechargeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RechargeanAccount value)?  recharge,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RechargeanAccount() when recharge != null:
return recharge(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RechargeanAccount value)  recharge,}){
final _that = this;
switch (_that) {
case RechargeanAccount():
return recharge(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RechargeanAccount value)?  recharge,}){
final _that = this;
switch (_that) {
case RechargeanAccount() when recharge != null:
return recharge(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Recharge recharge)?  recharge,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RechargeanAccount() when recharge != null:
return recharge(_that.recharge);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Recharge recharge)  recharge,}) {final _that = this;
switch (_that) {
case RechargeanAccount():
return recharge(_that.recharge);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Recharge recharge)?  recharge,}) {final _that = this;
switch (_that) {
case RechargeanAccount() when recharge != null:
return recharge(_that.recharge);case _:
  return null;

}
}

}

/// @nodoc


class RechargeanAccount implements RechargeEvent {
  const RechargeanAccount({required this.recharge});
  

@override final  Recharge recharge;

/// Create a copy of RechargeEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RechargeanAccountCopyWith<RechargeanAccount> get copyWith => _$RechargeanAccountCopyWithImpl<RechargeanAccount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RechargeanAccount&&(identical(other.recharge, recharge) || other.recharge == recharge));
}


@override
int get hashCode => Object.hash(runtimeType,recharge);

@override
String toString() {
  return 'RechargeEvent.recharge(recharge: $recharge)';
}


}

/// @nodoc
abstract mixin class $RechargeanAccountCopyWith<$Res> implements $RechargeEventCopyWith<$Res> {
  factory $RechargeanAccountCopyWith(RechargeanAccount value, $Res Function(RechargeanAccount) _then) = _$RechargeanAccountCopyWithImpl;
@override @useResult
$Res call({
 Recharge recharge
});


@override $RechargeCopyWith<$Res> get recharge;

}
/// @nodoc
class _$RechargeanAccountCopyWithImpl<$Res>
    implements $RechargeanAccountCopyWith<$Res> {
  _$RechargeanAccountCopyWithImpl(this._self, this._then);

  final RechargeanAccount _self;
  final $Res Function(RechargeanAccount) _then;

/// Create a copy of RechargeEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recharge = null,}) {
  return _then(RechargeanAccount(
recharge: null == recharge ? _self.recharge : recharge // ignore: cast_nullable_to_non_nullable
as Recharge,
  ));
}

/// Create a copy of RechargeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RechargeCopyWith<$Res> get recharge {
  
  return $RechargeCopyWith<$Res>(_self.recharge, (value) {
    return _then(_self.copyWith(recharge: value));
  });
}
}

// dart format on
