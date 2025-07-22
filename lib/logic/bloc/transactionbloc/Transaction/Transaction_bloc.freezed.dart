// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionState()';
}


}

/// @nodoc
class $TransactionStateCopyWith<$Res>  {
$TransactionStateCopyWith(TransactionState _, $Res Function(TransactionState) __);
}


/// Adds pattern-matching-related methods to [TransactionState].
extension TransactionStatePatterns on TransactionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( LoadingpaymentInitiation value)?  loadinpaymentinitiation,TResult Function( PaymentInitiationSuccessfull value)?  paymentinitiationSuccessfull,TResult Function( PaymentInitiationFailed value)?  paymentinitiationFailed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingpaymentInitiation() when loadinpaymentinitiation != null:
return loadinpaymentinitiation(_that);case PaymentInitiationSuccessfull() when paymentinitiationSuccessfull != null:
return paymentinitiationSuccessfull(_that);case PaymentInitiationFailed() when paymentinitiationFailed != null:
return paymentinitiationFailed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( LoadingpaymentInitiation value)  loadinpaymentinitiation,required TResult Function( PaymentInitiationSuccessfull value)  paymentinitiationSuccessfull,required TResult Function( PaymentInitiationFailed value)  paymentinitiationFailed,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case LoadingpaymentInitiation():
return loadinpaymentinitiation(_that);case PaymentInitiationSuccessfull():
return paymentinitiationSuccessfull(_that);case PaymentInitiationFailed():
return paymentinitiationFailed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( LoadingpaymentInitiation value)?  loadinpaymentinitiation,TResult? Function( PaymentInitiationSuccessfull value)?  paymentinitiationSuccessfull,TResult? Function( PaymentInitiationFailed value)?  paymentinitiationFailed,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingpaymentInitiation() when loadinpaymentinitiation != null:
return loadinpaymentinitiation(_that);case PaymentInitiationSuccessfull() when paymentinitiationSuccessfull != null:
return paymentinitiationSuccessfull(_that);case PaymentInitiationFailed() when paymentinitiationFailed != null:
return paymentinitiationFailed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadinpaymentinitiation,TResult Function( AppResponse<Map<String, dynamic>> response)?  paymentinitiationSuccessfull,TResult Function( String errormessga)?  paymentinitiationFailed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingpaymentInitiation() when loadinpaymentinitiation != null:
return loadinpaymentinitiation();case PaymentInitiationSuccessfull() when paymentinitiationSuccessfull != null:
return paymentinitiationSuccessfull(_that.response);case PaymentInitiationFailed() when paymentinitiationFailed != null:
return paymentinitiationFailed(_that.errormessga);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadinpaymentinitiation,required TResult Function( AppResponse<Map<String, dynamic>> response)  paymentinitiationSuccessfull,required TResult Function( String errormessga)  paymentinitiationFailed,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case LoadingpaymentInitiation():
return loadinpaymentinitiation();case PaymentInitiationSuccessfull():
return paymentinitiationSuccessfull(_that.response);case PaymentInitiationFailed():
return paymentinitiationFailed(_that.errormessga);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadinpaymentinitiation,TResult? Function( AppResponse<Map<String, dynamic>> response)?  paymentinitiationSuccessfull,TResult? Function( String errormessga)?  paymentinitiationFailed,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingpaymentInitiation() when loadinpaymentinitiation != null:
return loadinpaymentinitiation();case PaymentInitiationSuccessfull() when paymentinitiationSuccessfull != null:
return paymentinitiationSuccessfull(_that.response);case PaymentInitiationFailed() when paymentinitiationFailed != null:
return paymentinitiationFailed(_that.errormessga);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements TransactionState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionState.initial()';
}


}




/// @nodoc


class LoadingpaymentInitiation implements TransactionState {
  const LoadingpaymentInitiation();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingpaymentInitiation);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionState.loadinpaymentinitiation()';
}


}




/// @nodoc


class PaymentInitiationSuccessfull implements TransactionState {
  const PaymentInitiationSuccessfull({required this.response});
  

 final  AppResponse<Map<String, dynamic>> response;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentInitiationSuccessfullCopyWith<PaymentInitiationSuccessfull> get copyWith => _$PaymentInitiationSuccessfullCopyWithImpl<PaymentInitiationSuccessfull>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentInitiationSuccessfull&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'TransactionState.paymentinitiationSuccessfull(response: $response)';
}


}

/// @nodoc
abstract mixin class $PaymentInitiationSuccessfullCopyWith<$Res> implements $TransactionStateCopyWith<$Res> {
  factory $PaymentInitiationSuccessfullCopyWith(PaymentInitiationSuccessfull value, $Res Function(PaymentInitiationSuccessfull) _then) = _$PaymentInitiationSuccessfullCopyWithImpl;
@useResult
$Res call({
 AppResponse<Map<String, dynamic>> response
});




}
/// @nodoc
class _$PaymentInitiationSuccessfullCopyWithImpl<$Res>
    implements $PaymentInitiationSuccessfullCopyWith<$Res> {
  _$PaymentInitiationSuccessfullCopyWithImpl(this._self, this._then);

  final PaymentInitiationSuccessfull _self;
  final $Res Function(PaymentInitiationSuccessfull) _then;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(PaymentInitiationSuccessfull(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as AppResponse<Map<String, dynamic>>,
  ));
}


}

/// @nodoc


class PaymentInitiationFailed implements TransactionState {
  const PaymentInitiationFailed({required this.errormessga});
  

 final  String errormessga;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentInitiationFailedCopyWith<PaymentInitiationFailed> get copyWith => _$PaymentInitiationFailedCopyWithImpl<PaymentInitiationFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentInitiationFailed&&(identical(other.errormessga, errormessga) || other.errormessga == errormessga));
}


@override
int get hashCode => Object.hash(runtimeType,errormessga);

@override
String toString() {
  return 'TransactionState.paymentinitiationFailed(errormessga: $errormessga)';
}


}

/// @nodoc
abstract mixin class $PaymentInitiationFailedCopyWith<$Res> implements $TransactionStateCopyWith<$Res> {
  factory $PaymentInitiationFailedCopyWith(PaymentInitiationFailed value, $Res Function(PaymentInitiationFailed) _then) = _$PaymentInitiationFailedCopyWithImpl;
@useResult
$Res call({
 String errormessga
});




}
/// @nodoc
class _$PaymentInitiationFailedCopyWithImpl<$Res>
    implements $PaymentInitiationFailedCopyWith<$Res> {
  _$PaymentInitiationFailedCopyWithImpl(this._self, this._then);

  final PaymentInitiationFailed _self;
  final $Res Function(PaymentInitiationFailed) _then;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errormessga = null,}) {
  return _then(PaymentInitiationFailed(
errormessga: null == errormessga ? _self.errormessga : errormessga // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TransactionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionEvent()';
}


}

/// @nodoc
class $TransactionEventCopyWith<$Res>  {
$TransactionEventCopyWith(TransactionEvent _, $Res Function(TransactionEvent) __);
}


/// Adds pattern-matching-related methods to [TransactionEvent].
extension TransactionEventPatterns on TransactionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitiatTransaction value)?  transactionInitiation,TResult Function( Reset value)?  reset,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitiatTransaction() when transactionInitiation != null:
return transactionInitiation(_that);case Reset() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitiatTransaction value)  transactionInitiation,required TResult Function( Reset value)  reset,}){
final _that = this;
switch (_that) {
case InitiatTransaction():
return transactionInitiation(_that);case Reset():
return reset(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitiatTransaction value)?  transactionInitiation,TResult? Function( Reset value)?  reset,}){
final _that = this;
switch (_that) {
case InitiatTransaction() when transactionInitiation != null:
return transactionInitiation(_that);case Reset() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Transaction transaction)?  transactionInitiation,TResult Function()?  reset,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitiatTransaction() when transactionInitiation != null:
return transactionInitiation(_that.transaction);case Reset() when reset != null:
return reset();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Transaction transaction)  transactionInitiation,required TResult Function()  reset,}) {final _that = this;
switch (_that) {
case InitiatTransaction():
return transactionInitiation(_that.transaction);case Reset():
return reset();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Transaction transaction)?  transactionInitiation,TResult? Function()?  reset,}) {final _that = this;
switch (_that) {
case InitiatTransaction() when transactionInitiation != null:
return transactionInitiation(_that.transaction);case Reset() when reset != null:
return reset();case _:
  return null;

}
}

}

/// @nodoc


class InitiatTransaction implements TransactionEvent {
  const InitiatTransaction({required this.transaction});
  

 final  Transaction transaction;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitiatTransactionCopyWith<InitiatTransaction> get copyWith => _$InitiatTransactionCopyWithImpl<InitiatTransaction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitiatTransaction&&(identical(other.transaction, transaction) || other.transaction == transaction));
}


@override
int get hashCode => Object.hash(runtimeType,transaction);

@override
String toString() {
  return 'TransactionEvent.transactionInitiation(transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class $InitiatTransactionCopyWith<$Res> implements $TransactionEventCopyWith<$Res> {
  factory $InitiatTransactionCopyWith(InitiatTransaction value, $Res Function(InitiatTransaction) _then) = _$InitiatTransactionCopyWithImpl;
@useResult
$Res call({
 Transaction transaction
});


$TransactionCopyWith<$Res> get transaction;

}
/// @nodoc
class _$InitiatTransactionCopyWithImpl<$Res>
    implements $InitiatTransactionCopyWith<$Res> {
  _$InitiatTransactionCopyWithImpl(this._self, this._then);

  final InitiatTransaction _self;
  final $Res Function(InitiatTransaction) _then;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transaction = null,}) {
  return _then(InitiatTransaction(
transaction: null == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as Transaction,
  ));
}

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionCopyWith<$Res> get transaction {
  
  return $TransactionCopyWith<$Res>(_self.transaction, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}

/// @nodoc


class Reset implements TransactionEvent {
  const Reset();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Reset);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionEvent.reset()';
}


}




// dart format on
