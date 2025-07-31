// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( LoadInProgress value)?  loadInProgress,TResult Function( RegistrationSuccess value)?  registrationSuccess,TResult Function( RegistrationFailure value)?  registrationFailure,TResult Function( LoadingLogin value)?  loadinglogin,TResult Function( LoginSuccess value)?  loginSuccess,TResult Function( LoginFailure value)?  loginFailure,TResult Function( LoadingToGetUserWithToken value)?  loadingwithtoken,TResult Function( LoginWithTokenSuccessfully value)?  loginwithtokensuccessfully,TResult Function( LoginWithTokenFailed value)?  loginwithtokenFailed,TResult Function( LogingOutUser value)?  logingoutuser,TResult Function( LoginOUtUserSuccessfully value)?  logingoutusersuccessfully,TResult Function( LoginOutUserFailed value)?  loginoutuserfailed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadInProgress() when loadInProgress != null:
return loadInProgress(_that);case RegistrationSuccess() when registrationSuccess != null:
return registrationSuccess(_that);case RegistrationFailure() when registrationFailure != null:
return registrationFailure(_that);case LoadingLogin() when loadinglogin != null:
return loadinglogin(_that);case LoginSuccess() when loginSuccess != null:
return loginSuccess(_that);case LoginFailure() when loginFailure != null:
return loginFailure(_that);case LoadingToGetUserWithToken() when loadingwithtoken != null:
return loadingwithtoken(_that);case LoginWithTokenSuccessfully() when loginwithtokensuccessfully != null:
return loginwithtokensuccessfully(_that);case LoginWithTokenFailed() when loginwithtokenFailed != null:
return loginwithtokenFailed(_that);case LogingOutUser() when logingoutuser != null:
return logingoutuser(_that);case LoginOUtUserSuccessfully() when logingoutusersuccessfully != null:
return logingoutusersuccessfully(_that);case LoginOutUserFailed() when loginoutuserfailed != null:
return loginoutuserfailed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( LoadInProgress value)  loadInProgress,required TResult Function( RegistrationSuccess value)  registrationSuccess,required TResult Function( RegistrationFailure value)  registrationFailure,required TResult Function( LoadingLogin value)  loadinglogin,required TResult Function( LoginSuccess value)  loginSuccess,required TResult Function( LoginFailure value)  loginFailure,required TResult Function( LoadingToGetUserWithToken value)  loadingwithtoken,required TResult Function( LoginWithTokenSuccessfully value)  loginwithtokensuccessfully,required TResult Function( LoginWithTokenFailed value)  loginwithtokenFailed,required TResult Function( LogingOutUser value)  logingoutuser,required TResult Function( LoginOUtUserSuccessfully value)  logingoutusersuccessfully,required TResult Function( LoginOutUserFailed value)  loginoutuserfailed,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case LoadInProgress():
return loadInProgress(_that);case RegistrationSuccess():
return registrationSuccess(_that);case RegistrationFailure():
return registrationFailure(_that);case LoadingLogin():
return loadinglogin(_that);case LoginSuccess():
return loginSuccess(_that);case LoginFailure():
return loginFailure(_that);case LoadingToGetUserWithToken():
return loadingwithtoken(_that);case LoginWithTokenSuccessfully():
return loginwithtokensuccessfully(_that);case LoginWithTokenFailed():
return loginwithtokenFailed(_that);case LogingOutUser():
return logingoutuser(_that);case LoginOUtUserSuccessfully():
return logingoutusersuccessfully(_that);case LoginOutUserFailed():
return loginoutuserfailed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( LoadInProgress value)?  loadInProgress,TResult? Function( RegistrationSuccess value)?  registrationSuccess,TResult? Function( RegistrationFailure value)?  registrationFailure,TResult? Function( LoadingLogin value)?  loadinglogin,TResult? Function( LoginSuccess value)?  loginSuccess,TResult? Function( LoginFailure value)?  loginFailure,TResult? Function( LoadingToGetUserWithToken value)?  loadingwithtoken,TResult? Function( LoginWithTokenSuccessfully value)?  loginwithtokensuccessfully,TResult? Function( LoginWithTokenFailed value)?  loginwithtokenFailed,TResult? Function( LogingOutUser value)?  logingoutuser,TResult? Function( LoginOUtUserSuccessfully value)?  logingoutusersuccessfully,TResult? Function( LoginOutUserFailed value)?  loginoutuserfailed,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadInProgress() when loadInProgress != null:
return loadInProgress(_that);case RegistrationSuccess() when registrationSuccess != null:
return registrationSuccess(_that);case RegistrationFailure() when registrationFailure != null:
return registrationFailure(_that);case LoadingLogin() when loadinglogin != null:
return loadinglogin(_that);case LoginSuccess() when loginSuccess != null:
return loginSuccess(_that);case LoginFailure() when loginFailure != null:
return loginFailure(_that);case LoadingToGetUserWithToken() when loadingwithtoken != null:
return loadingwithtoken(_that);case LoginWithTokenSuccessfully() when loginwithtokensuccessfully != null:
return loginwithtokensuccessfully(_that);case LoginWithTokenFailed() when loginwithtokenFailed != null:
return loginwithtokenFailed(_that);case LogingOutUser() when logingoutuser != null:
return logingoutuser(_that);case LoginOUtUserSuccessfully() when logingoutusersuccessfully != null:
return logingoutusersuccessfully(_that);case LoginOutUserFailed() when loginoutuserfailed != null:
return loginoutuserfailed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadInProgress,TResult Function( AppResponse<Map<String, dynamic>> response)?  registrationSuccess,TResult Function( String message)?  registrationFailure,TResult Function()?  loadinglogin,TResult Function( AppResponse<Map<String, dynamic>> response)?  loginSuccess,TResult Function( String message)?  loginFailure,TResult Function()?  loadingwithtoken,TResult Function( AppResponse<Map<String, dynamic>> response)?  loginwithtokensuccessfully,TResult Function( String errormessage)?  loginwithtokenFailed,TResult Function()?  logingoutuser,TResult Function( AppResponse<Map<String, dynamic>> response)?  logingoutusersuccessfully,TResult Function( String errormessage)?  loginoutuserfailed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadInProgress() when loadInProgress != null:
return loadInProgress();case RegistrationSuccess() when registrationSuccess != null:
return registrationSuccess(_that.response);case RegistrationFailure() when registrationFailure != null:
return registrationFailure(_that.message);case LoadingLogin() when loadinglogin != null:
return loadinglogin();case LoginSuccess() when loginSuccess != null:
return loginSuccess(_that.response);case LoginFailure() when loginFailure != null:
return loginFailure(_that.message);case LoadingToGetUserWithToken() when loadingwithtoken != null:
return loadingwithtoken();case LoginWithTokenSuccessfully() when loginwithtokensuccessfully != null:
return loginwithtokensuccessfully(_that.response);case LoginWithTokenFailed() when loginwithtokenFailed != null:
return loginwithtokenFailed(_that.errormessage);case LogingOutUser() when logingoutuser != null:
return logingoutuser();case LoginOUtUserSuccessfully() when logingoutusersuccessfully != null:
return logingoutusersuccessfully(_that.response);case LoginOutUserFailed() when loginoutuserfailed != null:
return loginoutuserfailed(_that.errormessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadInProgress,required TResult Function( AppResponse<Map<String, dynamic>> response)  registrationSuccess,required TResult Function( String message)  registrationFailure,required TResult Function()  loadinglogin,required TResult Function( AppResponse<Map<String, dynamic>> response)  loginSuccess,required TResult Function( String message)  loginFailure,required TResult Function()  loadingwithtoken,required TResult Function( AppResponse<Map<String, dynamic>> response)  loginwithtokensuccessfully,required TResult Function( String errormessage)  loginwithtokenFailed,required TResult Function()  logingoutuser,required TResult Function( AppResponse<Map<String, dynamic>> response)  logingoutusersuccessfully,required TResult Function( String errormessage)  loginoutuserfailed,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case LoadInProgress():
return loadInProgress();case RegistrationSuccess():
return registrationSuccess(_that.response);case RegistrationFailure():
return registrationFailure(_that.message);case LoadingLogin():
return loadinglogin();case LoginSuccess():
return loginSuccess(_that.response);case LoginFailure():
return loginFailure(_that.message);case LoadingToGetUserWithToken():
return loadingwithtoken();case LoginWithTokenSuccessfully():
return loginwithtokensuccessfully(_that.response);case LoginWithTokenFailed():
return loginwithtokenFailed(_that.errormessage);case LogingOutUser():
return logingoutuser();case LoginOUtUserSuccessfully():
return logingoutusersuccessfully(_that.response);case LoginOutUserFailed():
return loginoutuserfailed(_that.errormessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadInProgress,TResult? Function( AppResponse<Map<String, dynamic>> response)?  registrationSuccess,TResult? Function( String message)?  registrationFailure,TResult? Function()?  loadinglogin,TResult? Function( AppResponse<Map<String, dynamic>> response)?  loginSuccess,TResult? Function( String message)?  loginFailure,TResult? Function()?  loadingwithtoken,TResult? Function( AppResponse<Map<String, dynamic>> response)?  loginwithtokensuccessfully,TResult? Function( String errormessage)?  loginwithtokenFailed,TResult? Function()?  logingoutuser,TResult? Function( AppResponse<Map<String, dynamic>> response)?  logingoutusersuccessfully,TResult? Function( String errormessage)?  loginoutuserfailed,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadInProgress() when loadInProgress != null:
return loadInProgress();case RegistrationSuccess() when registrationSuccess != null:
return registrationSuccess(_that.response);case RegistrationFailure() when registrationFailure != null:
return registrationFailure(_that.message);case LoadingLogin() when loadinglogin != null:
return loadinglogin();case LoginSuccess() when loginSuccess != null:
return loginSuccess(_that.response);case LoginFailure() when loginFailure != null:
return loginFailure(_that.message);case LoadingToGetUserWithToken() when loadingwithtoken != null:
return loadingwithtoken();case LoginWithTokenSuccessfully() when loginwithtokensuccessfully != null:
return loginwithtokensuccessfully(_that.response);case LoginWithTokenFailed() when loginwithtokenFailed != null:
return loginwithtokenFailed(_that.errormessage);case LogingOutUser() when logingoutuser != null:
return logingoutuser();case LoginOUtUserSuccessfully() when logingoutusersuccessfully != null:
return logingoutusersuccessfully(_that.response);case LoginOutUserFailed() when loginoutuserfailed != null:
return loginoutuserfailed(_that.errormessage);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements AuthState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.initial()';
}


}




/// @nodoc


class LoadInProgress implements AuthState {
  const LoadInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loadInProgress()';
}


}




/// @nodoc


class RegistrationSuccess implements AuthState {
  const RegistrationSuccess({required this.response});
  

 final  AppResponse<Map<String, dynamic>> response;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegistrationSuccessCopyWith<RegistrationSuccess> get copyWith => _$RegistrationSuccessCopyWithImpl<RegistrationSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationSuccess&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'AuthState.registrationSuccess(response: $response)';
}


}

/// @nodoc
abstract mixin class $RegistrationSuccessCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $RegistrationSuccessCopyWith(RegistrationSuccess value, $Res Function(RegistrationSuccess) _then) = _$RegistrationSuccessCopyWithImpl;
@useResult
$Res call({
 AppResponse<Map<String, dynamic>> response
});




}
/// @nodoc
class _$RegistrationSuccessCopyWithImpl<$Res>
    implements $RegistrationSuccessCopyWith<$Res> {
  _$RegistrationSuccessCopyWithImpl(this._self, this._then);

  final RegistrationSuccess _self;
  final $Res Function(RegistrationSuccess) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(RegistrationSuccess(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as AppResponse<Map<String, dynamic>>,
  ));
}


}

/// @nodoc


class RegistrationFailure implements AuthState {
  const RegistrationFailure({required this.message});
  

 final  String message;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegistrationFailureCopyWith<RegistrationFailure> get copyWith => _$RegistrationFailureCopyWithImpl<RegistrationFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthState.registrationFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $RegistrationFailureCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $RegistrationFailureCopyWith(RegistrationFailure value, $Res Function(RegistrationFailure) _then) = _$RegistrationFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$RegistrationFailureCopyWithImpl<$Res>
    implements $RegistrationFailureCopyWith<$Res> {
  _$RegistrationFailureCopyWithImpl(this._self, this._then);

  final RegistrationFailure _self;
  final $Res Function(RegistrationFailure) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(RegistrationFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadingLogin implements AuthState {
  const LoadingLogin();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingLogin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loadinglogin()';
}


}




/// @nodoc


class LoginSuccess implements AuthState {
  const LoginSuccess({required this.response});
  

 final  AppResponse<Map<String, dynamic>> response;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginSuccessCopyWith<LoginSuccess> get copyWith => _$LoginSuccessCopyWithImpl<LoginSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSuccess&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'AuthState.loginSuccess(response: $response)';
}


}

/// @nodoc
abstract mixin class $LoginSuccessCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $LoginSuccessCopyWith(LoginSuccess value, $Res Function(LoginSuccess) _then) = _$LoginSuccessCopyWithImpl;
@useResult
$Res call({
 AppResponse<Map<String, dynamic>> response
});




}
/// @nodoc
class _$LoginSuccessCopyWithImpl<$Res>
    implements $LoginSuccessCopyWith<$Res> {
  _$LoginSuccessCopyWithImpl(this._self, this._then);

  final LoginSuccess _self;
  final $Res Function(LoginSuccess) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(LoginSuccess(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as AppResponse<Map<String, dynamic>>,
  ));
}


}

/// @nodoc


class LoginFailure implements AuthState {
  const LoginFailure({required this.message});
  

 final  String message;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginFailureCopyWith<LoginFailure> get copyWith => _$LoginFailureCopyWithImpl<LoginFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthState.loginFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $LoginFailureCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $LoginFailureCopyWith(LoginFailure value, $Res Function(LoginFailure) _then) = _$LoginFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$LoginFailureCopyWithImpl<$Res>
    implements $LoginFailureCopyWith<$Res> {
  _$LoginFailureCopyWithImpl(this._self, this._then);

  final LoginFailure _self;
  final $Res Function(LoginFailure) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(LoginFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadingToGetUserWithToken implements AuthState {
  const LoadingToGetUserWithToken();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingToGetUserWithToken);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loadingwithtoken()';
}


}




/// @nodoc


class LoginWithTokenSuccessfully implements AuthState {
  const LoginWithTokenSuccessfully({required this.response});
  

 final  AppResponse<Map<String, dynamic>> response;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginWithTokenSuccessfullyCopyWith<LoginWithTokenSuccessfully> get copyWith => _$LoginWithTokenSuccessfullyCopyWithImpl<LoginWithTokenSuccessfully>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginWithTokenSuccessfully&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'AuthState.loginwithtokensuccessfully(response: $response)';
}


}

/// @nodoc
abstract mixin class $LoginWithTokenSuccessfullyCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $LoginWithTokenSuccessfullyCopyWith(LoginWithTokenSuccessfully value, $Res Function(LoginWithTokenSuccessfully) _then) = _$LoginWithTokenSuccessfullyCopyWithImpl;
@useResult
$Res call({
 AppResponse<Map<String, dynamic>> response
});




}
/// @nodoc
class _$LoginWithTokenSuccessfullyCopyWithImpl<$Res>
    implements $LoginWithTokenSuccessfullyCopyWith<$Res> {
  _$LoginWithTokenSuccessfullyCopyWithImpl(this._self, this._then);

  final LoginWithTokenSuccessfully _self;
  final $Res Function(LoginWithTokenSuccessfully) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(LoginWithTokenSuccessfully(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as AppResponse<Map<String, dynamic>>,
  ));
}


}

/// @nodoc


class LoginWithTokenFailed implements AuthState {
  const LoginWithTokenFailed({required this.errormessage});
  

 final  String errormessage;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginWithTokenFailedCopyWith<LoginWithTokenFailed> get copyWith => _$LoginWithTokenFailedCopyWithImpl<LoginWithTokenFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginWithTokenFailed&&(identical(other.errormessage, errormessage) || other.errormessage == errormessage));
}


@override
int get hashCode => Object.hash(runtimeType,errormessage);

@override
String toString() {
  return 'AuthState.loginwithtokenFailed(errormessage: $errormessage)';
}


}

/// @nodoc
abstract mixin class $LoginWithTokenFailedCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $LoginWithTokenFailedCopyWith(LoginWithTokenFailed value, $Res Function(LoginWithTokenFailed) _then) = _$LoginWithTokenFailedCopyWithImpl;
@useResult
$Res call({
 String errormessage
});




}
/// @nodoc
class _$LoginWithTokenFailedCopyWithImpl<$Res>
    implements $LoginWithTokenFailedCopyWith<$Res> {
  _$LoginWithTokenFailedCopyWithImpl(this._self, this._then);

  final LoginWithTokenFailed _self;
  final $Res Function(LoginWithTokenFailed) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errormessage = null,}) {
  return _then(LoginWithTokenFailed(
errormessage: null == errormessage ? _self.errormessage : errormessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LogingOutUser implements AuthState {
  const LogingOutUser();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogingOutUser);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.logingoutuser()';
}


}




/// @nodoc


class LoginOUtUserSuccessfully implements AuthState {
  const LoginOUtUserSuccessfully({required this.response});
  

 final  AppResponse<Map<String, dynamic>> response;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginOUtUserSuccessfullyCopyWith<LoginOUtUserSuccessfully> get copyWith => _$LoginOUtUserSuccessfullyCopyWithImpl<LoginOUtUserSuccessfully>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginOUtUserSuccessfully&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'AuthState.logingoutusersuccessfully(response: $response)';
}


}

/// @nodoc
abstract mixin class $LoginOUtUserSuccessfullyCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $LoginOUtUserSuccessfullyCopyWith(LoginOUtUserSuccessfully value, $Res Function(LoginOUtUserSuccessfully) _then) = _$LoginOUtUserSuccessfullyCopyWithImpl;
@useResult
$Res call({
 AppResponse<Map<String, dynamic>> response
});




}
/// @nodoc
class _$LoginOUtUserSuccessfullyCopyWithImpl<$Res>
    implements $LoginOUtUserSuccessfullyCopyWith<$Res> {
  _$LoginOUtUserSuccessfullyCopyWithImpl(this._self, this._then);

  final LoginOUtUserSuccessfully _self;
  final $Res Function(LoginOUtUserSuccessfully) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(LoginOUtUserSuccessfully(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as AppResponse<Map<String, dynamic>>,
  ));
}


}

/// @nodoc


class LoginOutUserFailed implements AuthState {
  const LoginOutUserFailed({required this.errormessage});
  

 final  String errormessage;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginOutUserFailedCopyWith<LoginOutUserFailed> get copyWith => _$LoginOutUserFailedCopyWithImpl<LoginOutUserFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginOutUserFailed&&(identical(other.errormessage, errormessage) || other.errormessage == errormessage));
}


@override
int get hashCode => Object.hash(runtimeType,errormessage);

@override
String toString() {
  return 'AuthState.loginoutuserfailed(errormessage: $errormessage)';
}


}

/// @nodoc
abstract mixin class $LoginOutUserFailedCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $LoginOutUserFailedCopyWith(LoginOutUserFailed value, $Res Function(LoginOutUserFailed) _then) = _$LoginOutUserFailedCopyWithImpl;
@useResult
$Res call({
 String errormessage
});




}
/// @nodoc
class _$LoginOutUserFailedCopyWithImpl<$Res>
    implements $LoginOutUserFailedCopyWith<$Res> {
  _$LoginOutUserFailedCopyWithImpl(this._self, this._then);

  final LoginOutUserFailed _self;
  final $Res Function(LoginOutUserFailed) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errormessage = null,}) {
  return _then(LoginOutUserFailed(
errormessage: null == errormessage ? _self.errormessage : errormessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RegisterUser value)?  registerUser,TResult Function( LoginUser value)?  loginUser,TResult Function( LoginWithToken value)?  loginwithToken,TResult Function( LogOut value)?  logout,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RegisterUser() when registerUser != null:
return registerUser(_that);case LoginUser() when loginUser != null:
return loginUser(_that);case LoginWithToken() when loginwithToken != null:
return loginwithToken(_that);case LogOut() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RegisterUser value)  registerUser,required TResult Function( LoginUser value)  loginUser,required TResult Function( LoginWithToken value)  loginwithToken,required TResult Function( LogOut value)  logout,}){
final _that = this;
switch (_that) {
case RegisterUser():
return registerUser(_that);case LoginUser():
return loginUser(_that);case LoginWithToken():
return loginwithToken(_that);case LogOut():
return logout(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RegisterUser value)?  registerUser,TResult? Function( LoginUser value)?  loginUser,TResult? Function( LoginWithToken value)?  loginwithToken,TResult? Function( LogOut value)?  logout,}){
final _that = this;
switch (_that) {
case RegisterUser() when registerUser != null:
return registerUser(_that);case LoginUser() when loginUser != null:
return loginUser(_that);case LoginWithToken() when loginwithToken != null:
return loginwithToken(_that);case LogOut() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( User user)?  registerUser,TResult Function( User user)?  loginUser,TResult Function()?  loginwithToken,TResult Function()?  logout,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RegisterUser() when registerUser != null:
return registerUser(_that.user);case LoginUser() when loginUser != null:
return loginUser(_that.user);case LoginWithToken() when loginwithToken != null:
return loginwithToken();case LogOut() when logout != null:
return logout();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( User user)  registerUser,required TResult Function( User user)  loginUser,required TResult Function()  loginwithToken,required TResult Function()  logout,}) {final _that = this;
switch (_that) {
case RegisterUser():
return registerUser(_that.user);case LoginUser():
return loginUser(_that.user);case LoginWithToken():
return loginwithToken();case LogOut():
return logout();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( User user)?  registerUser,TResult? Function( User user)?  loginUser,TResult? Function()?  loginwithToken,TResult? Function()?  logout,}) {final _that = this;
switch (_that) {
case RegisterUser() when registerUser != null:
return registerUser(_that.user);case LoginUser() when loginUser != null:
return loginUser(_that.user);case LoginWithToken() when loginwithToken != null:
return loginwithToken();case LogOut() when logout != null:
return logout();case _:
  return null;

}
}

}

/// @nodoc


class RegisterUser implements AuthEvent {
  const RegisterUser({required this.user});
  

 final  User user;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterUserCopyWith<RegisterUser> get copyWith => _$RegisterUserCopyWithImpl<RegisterUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterUser&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthEvent.registerUser(user: $user)';
}


}

/// @nodoc
abstract mixin class $RegisterUserCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $RegisterUserCopyWith(RegisterUser value, $Res Function(RegisterUser) _then) = _$RegisterUserCopyWithImpl;
@useResult
$Res call({
 User user
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$RegisterUserCopyWithImpl<$Res>
    implements $RegisterUserCopyWith<$Res> {
  _$RegisterUserCopyWithImpl(this._self, this._then);

  final RegisterUser _self;
  final $Res Function(RegisterUser) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(RegisterUser(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class LoginUser implements AuthEvent {
  const LoginUser({required this.user});
  

 final  User user;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginUserCopyWith<LoginUser> get copyWith => _$LoginUserCopyWithImpl<LoginUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginUser&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthEvent.loginUser(user: $user)';
}


}

/// @nodoc
abstract mixin class $LoginUserCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $LoginUserCopyWith(LoginUser value, $Res Function(LoginUser) _then) = _$LoginUserCopyWithImpl;
@useResult
$Res call({
 User user
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$LoginUserCopyWithImpl<$Res>
    implements $LoginUserCopyWith<$Res> {
  _$LoginUserCopyWithImpl(this._self, this._then);

  final LoginUser _self;
  final $Res Function(LoginUser) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(LoginUser(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class LoginWithToken implements AuthEvent {
  const LoginWithToken();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginWithToken);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.loginwithToken()';
}


}




/// @nodoc


class LogOut implements AuthEvent {
  const LogOut();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logout()';
}


}




// dart format on
