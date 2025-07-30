// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'History_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HistoryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryEvent()';
}


}

/// @nodoc
class $HistoryEventCopyWith<$Res>  {
$HistoryEventCopyWith(HistoryEvent _, $Res Function(HistoryEvent) __);
}


/// Adds pattern-matching-related methods to [HistoryEvent].
extension HistoryEventPatterns on HistoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetHistory value)?  gethistory,TResult Function( GetListOfRecharge value)?  getrechargelist,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetHistory() when gethistory != null:
return gethistory(_that);case GetListOfRecharge() when getrechargelist != null:
return getrechargelist(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetHistory value)  gethistory,required TResult Function( GetListOfRecharge value)  getrechargelist,}){
final _that = this;
switch (_that) {
case GetHistory():
return gethistory(_that);case GetListOfRecharge():
return getrechargelist(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetHistory value)?  gethistory,TResult? Function( GetListOfRecharge value)?  getrechargelist,}){
final _that = this;
switch (_that) {
case GetHistory() when gethistory != null:
return gethistory(_that);case GetListOfRecharge() when getrechargelist != null:
return getrechargelist(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  gethistory,TResult Function()?  getrechargelist,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetHistory() when gethistory != null:
return gethistory();case GetListOfRecharge() when getrechargelist != null:
return getrechargelist();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  gethistory,required TResult Function()  getrechargelist,}) {final _that = this;
switch (_that) {
case GetHistory():
return gethistory();case GetListOfRecharge():
return getrechargelist();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  gethistory,TResult? Function()?  getrechargelist,}) {final _that = this;
switch (_that) {
case GetHistory() when gethistory != null:
return gethistory();case GetListOfRecharge() when getrechargelist != null:
return getrechargelist();case _:
  return null;

}
}

}

/// @nodoc


class GetHistory implements HistoryEvent {
  const GetHistory();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetHistory);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryEvent.gethistory()';
}


}




/// @nodoc


class GetListOfRecharge implements HistoryEvent {
  const GetListOfRecharge();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetListOfRecharge);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryEvent.getrechargelist()';
}


}




/// @nodoc
mixin _$HistoryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryState()';
}


}

/// @nodoc
class $HistoryStateCopyWith<$Res>  {
$HistoryStateCopyWith(HistoryState _, $Res Function(HistoryState) __);
}


/// Adds pattern-matching-related methods to [HistoryState].
extension HistoryStatePatterns on HistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( Loadinghistory value)?  loadinghistory,TResult Function( GetListOfTransactionsByuserIdSuccessfull value)?  getlistoftransactionsbyuserIdsuccessfull,TResult Function( GetlistofTransactionsbyuserIdFailed value)?  getlistoftransactionsbyuserIdFailed,TResult Function( LoadingListofRecharge value)?  loadinglistofrecharge,TResult Function( GetListOfRechargeByuserIdSuccessfull value)?  getlistofrechargebyuserIdsuccessfull,TResult Function( GetlistofRechargebyuserIdFailed value)?  getlistofrechargebyuserIdFailed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loadinghistory() when loadinghistory != null:
return loadinghistory(_that);case GetListOfTransactionsByuserIdSuccessfull() when getlistoftransactionsbyuserIdsuccessfull != null:
return getlistoftransactionsbyuserIdsuccessfull(_that);case GetlistofTransactionsbyuserIdFailed() when getlistoftransactionsbyuserIdFailed != null:
return getlistoftransactionsbyuserIdFailed(_that);case LoadingListofRecharge() when loadinglistofrecharge != null:
return loadinglistofrecharge(_that);case GetListOfRechargeByuserIdSuccessfull() when getlistofrechargebyuserIdsuccessfull != null:
return getlistofrechargebyuserIdsuccessfull(_that);case GetlistofRechargebyuserIdFailed() when getlistofrechargebyuserIdFailed != null:
return getlistofrechargebyuserIdFailed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( Loadinghistory value)  loadinghistory,required TResult Function( GetListOfTransactionsByuserIdSuccessfull value)  getlistoftransactionsbyuserIdsuccessfull,required TResult Function( GetlistofTransactionsbyuserIdFailed value)  getlistoftransactionsbyuserIdFailed,required TResult Function( LoadingListofRecharge value)  loadinglistofrecharge,required TResult Function( GetListOfRechargeByuserIdSuccessfull value)  getlistofrechargebyuserIdsuccessfull,required TResult Function( GetlistofRechargebyuserIdFailed value)  getlistofrechargebyuserIdFailed,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case Loadinghistory():
return loadinghistory(_that);case GetListOfTransactionsByuserIdSuccessfull():
return getlistoftransactionsbyuserIdsuccessfull(_that);case GetlistofTransactionsbyuserIdFailed():
return getlistoftransactionsbyuserIdFailed(_that);case LoadingListofRecharge():
return loadinglistofrecharge(_that);case GetListOfRechargeByuserIdSuccessfull():
return getlistofrechargebyuserIdsuccessfull(_that);case GetlistofRechargebyuserIdFailed():
return getlistofrechargebyuserIdFailed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( Loadinghistory value)?  loadinghistory,TResult? Function( GetListOfTransactionsByuserIdSuccessfull value)?  getlistoftransactionsbyuserIdsuccessfull,TResult? Function( GetlistofTransactionsbyuserIdFailed value)?  getlistoftransactionsbyuserIdFailed,TResult? Function( LoadingListofRecharge value)?  loadinglistofrecharge,TResult? Function( GetListOfRechargeByuserIdSuccessfull value)?  getlistofrechargebyuserIdsuccessfull,TResult? Function( GetlistofRechargebyuserIdFailed value)?  getlistofrechargebyuserIdFailed,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loadinghistory() when loadinghistory != null:
return loadinghistory(_that);case GetListOfTransactionsByuserIdSuccessfull() when getlistoftransactionsbyuserIdsuccessfull != null:
return getlistoftransactionsbyuserIdsuccessfull(_that);case GetlistofTransactionsbyuserIdFailed() when getlistoftransactionsbyuserIdFailed != null:
return getlistoftransactionsbyuserIdFailed(_that);case LoadingListofRecharge() when loadinglistofrecharge != null:
return loadinglistofrecharge(_that);case GetListOfRechargeByuserIdSuccessfull() when getlistofrechargebyuserIdsuccessfull != null:
return getlistofrechargebyuserIdsuccessfull(_that);case GetlistofRechargebyuserIdFailed() when getlistofrechargebyuserIdFailed != null:
return getlistofrechargebyuserIdFailed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadinghistory,TResult Function( AppResponse<Map<String, dynamic>> response)?  getlistoftransactionsbyuserIdsuccessfull,TResult Function( String errormessage)?  getlistoftransactionsbyuserIdFailed,TResult Function()?  loadinglistofrecharge,TResult Function( AppResponse<Map<String, dynamic>> response)?  getlistofrechargebyuserIdsuccessfull,TResult Function( String errormessage)?  getlistofrechargebyuserIdFailed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loadinghistory() when loadinghistory != null:
return loadinghistory();case GetListOfTransactionsByuserIdSuccessfull() when getlistoftransactionsbyuserIdsuccessfull != null:
return getlistoftransactionsbyuserIdsuccessfull(_that.response);case GetlistofTransactionsbyuserIdFailed() when getlistoftransactionsbyuserIdFailed != null:
return getlistoftransactionsbyuserIdFailed(_that.errormessage);case LoadingListofRecharge() when loadinglistofrecharge != null:
return loadinglistofrecharge();case GetListOfRechargeByuserIdSuccessfull() when getlistofrechargebyuserIdsuccessfull != null:
return getlistofrechargebyuserIdsuccessfull(_that.response);case GetlistofRechargebyuserIdFailed() when getlistofrechargebyuserIdFailed != null:
return getlistofrechargebyuserIdFailed(_that.errormessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadinghistory,required TResult Function( AppResponse<Map<String, dynamic>> response)  getlistoftransactionsbyuserIdsuccessfull,required TResult Function( String errormessage)  getlistoftransactionsbyuserIdFailed,required TResult Function()  loadinglistofrecharge,required TResult Function( AppResponse<Map<String, dynamic>> response)  getlistofrechargebyuserIdsuccessfull,required TResult Function( String errormessage)  getlistofrechargebyuserIdFailed,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case Loadinghistory():
return loadinghistory();case GetListOfTransactionsByuserIdSuccessfull():
return getlistoftransactionsbyuserIdsuccessfull(_that.response);case GetlistofTransactionsbyuserIdFailed():
return getlistoftransactionsbyuserIdFailed(_that.errormessage);case LoadingListofRecharge():
return loadinglistofrecharge();case GetListOfRechargeByuserIdSuccessfull():
return getlistofrechargebyuserIdsuccessfull(_that.response);case GetlistofRechargebyuserIdFailed():
return getlistofrechargebyuserIdFailed(_that.errormessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadinghistory,TResult? Function( AppResponse<Map<String, dynamic>> response)?  getlistoftransactionsbyuserIdsuccessfull,TResult? Function( String errormessage)?  getlistoftransactionsbyuserIdFailed,TResult? Function()?  loadinglistofrecharge,TResult? Function( AppResponse<Map<String, dynamic>> response)?  getlistofrechargebyuserIdsuccessfull,TResult? Function( String errormessage)?  getlistofrechargebyuserIdFailed,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loadinghistory() when loadinghistory != null:
return loadinghistory();case GetListOfTransactionsByuserIdSuccessfull() when getlistoftransactionsbyuserIdsuccessfull != null:
return getlistoftransactionsbyuserIdsuccessfull(_that.response);case GetlistofTransactionsbyuserIdFailed() when getlistoftransactionsbyuserIdFailed != null:
return getlistoftransactionsbyuserIdFailed(_that.errormessage);case LoadingListofRecharge() when loadinglistofrecharge != null:
return loadinglistofrecharge();case GetListOfRechargeByuserIdSuccessfull() when getlistofrechargebyuserIdsuccessfull != null:
return getlistofrechargebyuserIdsuccessfull(_that.response);case GetlistofRechargebyuserIdFailed() when getlistofrechargebyuserIdFailed != null:
return getlistofrechargebyuserIdFailed(_that.errormessage);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HistoryState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryState.initial()';
}


}




/// @nodoc


class Loadinghistory implements HistoryState {
  const Loadinghistory();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loadinghistory);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryState.loadinghistory()';
}


}




/// @nodoc


class GetListOfTransactionsByuserIdSuccessfull implements HistoryState {
  const GetListOfTransactionsByuserIdSuccessfull({required this.response});
  

 final  AppResponse<Map<String, dynamic>> response;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetListOfTransactionsByuserIdSuccessfullCopyWith<GetListOfTransactionsByuserIdSuccessfull> get copyWith => _$GetListOfTransactionsByuserIdSuccessfullCopyWithImpl<GetListOfTransactionsByuserIdSuccessfull>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetListOfTransactionsByuserIdSuccessfull&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'HistoryState.getlistoftransactionsbyuserIdsuccessfull(response: $response)';
}


}

/// @nodoc
abstract mixin class $GetListOfTransactionsByuserIdSuccessfullCopyWith<$Res> implements $HistoryStateCopyWith<$Res> {
  factory $GetListOfTransactionsByuserIdSuccessfullCopyWith(GetListOfTransactionsByuserIdSuccessfull value, $Res Function(GetListOfTransactionsByuserIdSuccessfull) _then) = _$GetListOfTransactionsByuserIdSuccessfullCopyWithImpl;
@useResult
$Res call({
 AppResponse<Map<String, dynamic>> response
});




}
/// @nodoc
class _$GetListOfTransactionsByuserIdSuccessfullCopyWithImpl<$Res>
    implements $GetListOfTransactionsByuserIdSuccessfullCopyWith<$Res> {
  _$GetListOfTransactionsByuserIdSuccessfullCopyWithImpl(this._self, this._then);

  final GetListOfTransactionsByuserIdSuccessfull _self;
  final $Res Function(GetListOfTransactionsByuserIdSuccessfull) _then;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(GetListOfTransactionsByuserIdSuccessfull(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as AppResponse<Map<String, dynamic>>,
  ));
}


}

/// @nodoc


class GetlistofTransactionsbyuserIdFailed implements HistoryState {
  const GetlistofTransactionsbyuserIdFailed({required this.errormessage});
  

 final  String errormessage;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetlistofTransactionsbyuserIdFailedCopyWith<GetlistofTransactionsbyuserIdFailed> get copyWith => _$GetlistofTransactionsbyuserIdFailedCopyWithImpl<GetlistofTransactionsbyuserIdFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetlistofTransactionsbyuserIdFailed&&(identical(other.errormessage, errormessage) || other.errormessage == errormessage));
}


@override
int get hashCode => Object.hash(runtimeType,errormessage);

@override
String toString() {
  return 'HistoryState.getlistoftransactionsbyuserIdFailed(errormessage: $errormessage)';
}


}

/// @nodoc
abstract mixin class $GetlistofTransactionsbyuserIdFailedCopyWith<$Res> implements $HistoryStateCopyWith<$Res> {
  factory $GetlistofTransactionsbyuserIdFailedCopyWith(GetlistofTransactionsbyuserIdFailed value, $Res Function(GetlistofTransactionsbyuserIdFailed) _then) = _$GetlistofTransactionsbyuserIdFailedCopyWithImpl;
@useResult
$Res call({
 String errormessage
});




}
/// @nodoc
class _$GetlistofTransactionsbyuserIdFailedCopyWithImpl<$Res>
    implements $GetlistofTransactionsbyuserIdFailedCopyWith<$Res> {
  _$GetlistofTransactionsbyuserIdFailedCopyWithImpl(this._self, this._then);

  final GetlistofTransactionsbyuserIdFailed _self;
  final $Res Function(GetlistofTransactionsbyuserIdFailed) _then;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errormessage = null,}) {
  return _then(GetlistofTransactionsbyuserIdFailed(
errormessage: null == errormessage ? _self.errormessage : errormessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadingListofRecharge implements HistoryState {
  const LoadingListofRecharge();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingListofRecharge);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryState.loadinglistofrecharge()';
}


}




/// @nodoc


class GetListOfRechargeByuserIdSuccessfull implements HistoryState {
  const GetListOfRechargeByuserIdSuccessfull({required this.response});
  

 final  AppResponse<Map<String, dynamic>> response;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetListOfRechargeByuserIdSuccessfullCopyWith<GetListOfRechargeByuserIdSuccessfull> get copyWith => _$GetListOfRechargeByuserIdSuccessfullCopyWithImpl<GetListOfRechargeByuserIdSuccessfull>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetListOfRechargeByuserIdSuccessfull&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'HistoryState.getlistofrechargebyuserIdsuccessfull(response: $response)';
}


}

/// @nodoc
abstract mixin class $GetListOfRechargeByuserIdSuccessfullCopyWith<$Res> implements $HistoryStateCopyWith<$Res> {
  factory $GetListOfRechargeByuserIdSuccessfullCopyWith(GetListOfRechargeByuserIdSuccessfull value, $Res Function(GetListOfRechargeByuserIdSuccessfull) _then) = _$GetListOfRechargeByuserIdSuccessfullCopyWithImpl;
@useResult
$Res call({
 AppResponse<Map<String, dynamic>> response
});




}
/// @nodoc
class _$GetListOfRechargeByuserIdSuccessfullCopyWithImpl<$Res>
    implements $GetListOfRechargeByuserIdSuccessfullCopyWith<$Res> {
  _$GetListOfRechargeByuserIdSuccessfullCopyWithImpl(this._self, this._then);

  final GetListOfRechargeByuserIdSuccessfull _self;
  final $Res Function(GetListOfRechargeByuserIdSuccessfull) _then;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(GetListOfRechargeByuserIdSuccessfull(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as AppResponse<Map<String, dynamic>>,
  ));
}


}

/// @nodoc


class GetlistofRechargebyuserIdFailed implements HistoryState {
  const GetlistofRechargebyuserIdFailed({required this.errormessage});
  

 final  String errormessage;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetlistofRechargebyuserIdFailedCopyWith<GetlistofRechargebyuserIdFailed> get copyWith => _$GetlistofRechargebyuserIdFailedCopyWithImpl<GetlistofRechargebyuserIdFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetlistofRechargebyuserIdFailed&&(identical(other.errormessage, errormessage) || other.errormessage == errormessage));
}


@override
int get hashCode => Object.hash(runtimeType,errormessage);

@override
String toString() {
  return 'HistoryState.getlistofrechargebyuserIdFailed(errormessage: $errormessage)';
}


}

/// @nodoc
abstract mixin class $GetlistofRechargebyuserIdFailedCopyWith<$Res> implements $HistoryStateCopyWith<$Res> {
  factory $GetlistofRechargebyuserIdFailedCopyWith(GetlistofRechargebyuserIdFailed value, $Res Function(GetlistofRechargebyuserIdFailed) _then) = _$GetlistofRechargebyuserIdFailedCopyWithImpl;
@useResult
$Res call({
 String errormessage
});




}
/// @nodoc
class _$GetlistofRechargebyuserIdFailedCopyWithImpl<$Res>
    implements $GetlistofRechargebyuserIdFailedCopyWith<$Res> {
  _$GetlistofRechargebyuserIdFailedCopyWithImpl(this._self, this._then);

  final GetlistofRechargebyuserIdFailed _self;
  final $Res Function(GetlistofRechargebyuserIdFailed) _then;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errormessage = null,}) {
  return _then(GetlistofRechargebyuserIdFailed(
errormessage: null == errormessage ? _self.errormessage : errormessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
