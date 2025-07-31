// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Usermanagement_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UsermanagementState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsermanagementState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UsermanagementState()';
}


}

/// @nodoc
class $UsermanagementStateCopyWith<$Res>  {
$UsermanagementStateCopyWith(UsermanagementState _, $Res Function(UsermanagementState) __);
}


/// Adds pattern-matching-related methods to [UsermanagementState].
extension UsermanagementStatePatterns on UsermanagementState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( LoadingToGetUserById value)?  loadingtogetuserbyid,TResult Function( GetUserByIdSuccessfully value)?  getuserbyidsuccessfully,TResult Function( GetUserByIdFailed value)?  getuserbyidFailed,TResult Function( LoadingToUpdateUserProfile value)?  loadingtoupdateuserprofile,TResult Function( UpdatingUserProfileSuccessfully value)?  updatinguserprofilesuccessfully,TResult Function( UpdatingUserProfileFailed value)?  updatinguserprofileFailed,TResult Function( LoadingToUpdateUserPassword value)?  loadingtoupdateuserpassword,TResult Function( UpdatingUserPasswordSuccessfully value)?  updatinguserpasswordsuccessfully,TResult Function( UpdatingUserPasswordFailed value)?  updatinguserpasswordFailed,TResult Function( LoadingToUpdateUserPincode value)?  loadingtoupdateuserpincode,TResult Function( UpdatingUserPincodeSuccessfully value)?  updatinguserpincodesuccessfully,TResult Function( UpdatingUserPincodeFailed value)?  updatinguserpincodeFailed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingToGetUserById() when loadingtogetuserbyid != null:
return loadingtogetuserbyid(_that);case GetUserByIdSuccessfully() when getuserbyidsuccessfully != null:
return getuserbyidsuccessfully(_that);case GetUserByIdFailed() when getuserbyidFailed != null:
return getuserbyidFailed(_that);case LoadingToUpdateUserProfile() when loadingtoupdateuserprofile != null:
return loadingtoupdateuserprofile(_that);case UpdatingUserProfileSuccessfully() when updatinguserprofilesuccessfully != null:
return updatinguserprofilesuccessfully(_that);case UpdatingUserProfileFailed() when updatinguserprofileFailed != null:
return updatinguserprofileFailed(_that);case LoadingToUpdateUserPassword() when loadingtoupdateuserpassword != null:
return loadingtoupdateuserpassword(_that);case UpdatingUserPasswordSuccessfully() when updatinguserpasswordsuccessfully != null:
return updatinguserpasswordsuccessfully(_that);case UpdatingUserPasswordFailed() when updatinguserpasswordFailed != null:
return updatinguserpasswordFailed(_that);case LoadingToUpdateUserPincode() when loadingtoupdateuserpincode != null:
return loadingtoupdateuserpincode(_that);case UpdatingUserPincodeSuccessfully() when updatinguserpincodesuccessfully != null:
return updatinguserpincodesuccessfully(_that);case UpdatingUserPincodeFailed() when updatinguserpincodeFailed != null:
return updatinguserpincodeFailed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( LoadingToGetUserById value)  loadingtogetuserbyid,required TResult Function( GetUserByIdSuccessfully value)  getuserbyidsuccessfully,required TResult Function( GetUserByIdFailed value)  getuserbyidFailed,required TResult Function( LoadingToUpdateUserProfile value)  loadingtoupdateuserprofile,required TResult Function( UpdatingUserProfileSuccessfully value)  updatinguserprofilesuccessfully,required TResult Function( UpdatingUserProfileFailed value)  updatinguserprofileFailed,required TResult Function( LoadingToUpdateUserPassword value)  loadingtoupdateuserpassword,required TResult Function( UpdatingUserPasswordSuccessfully value)  updatinguserpasswordsuccessfully,required TResult Function( UpdatingUserPasswordFailed value)  updatinguserpasswordFailed,required TResult Function( LoadingToUpdateUserPincode value)  loadingtoupdateuserpincode,required TResult Function( UpdatingUserPincodeSuccessfully value)  updatinguserpincodesuccessfully,required TResult Function( UpdatingUserPincodeFailed value)  updatinguserpincodeFailed,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case LoadingToGetUserById():
return loadingtogetuserbyid(_that);case GetUserByIdSuccessfully():
return getuserbyidsuccessfully(_that);case GetUserByIdFailed():
return getuserbyidFailed(_that);case LoadingToUpdateUserProfile():
return loadingtoupdateuserprofile(_that);case UpdatingUserProfileSuccessfully():
return updatinguserprofilesuccessfully(_that);case UpdatingUserProfileFailed():
return updatinguserprofileFailed(_that);case LoadingToUpdateUserPassword():
return loadingtoupdateuserpassword(_that);case UpdatingUserPasswordSuccessfully():
return updatinguserpasswordsuccessfully(_that);case UpdatingUserPasswordFailed():
return updatinguserpasswordFailed(_that);case LoadingToUpdateUserPincode():
return loadingtoupdateuserpincode(_that);case UpdatingUserPincodeSuccessfully():
return updatinguserpincodesuccessfully(_that);case UpdatingUserPincodeFailed():
return updatinguserpincodeFailed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( LoadingToGetUserById value)?  loadingtogetuserbyid,TResult? Function( GetUserByIdSuccessfully value)?  getuserbyidsuccessfully,TResult? Function( GetUserByIdFailed value)?  getuserbyidFailed,TResult? Function( LoadingToUpdateUserProfile value)?  loadingtoupdateuserprofile,TResult? Function( UpdatingUserProfileSuccessfully value)?  updatinguserprofilesuccessfully,TResult? Function( UpdatingUserProfileFailed value)?  updatinguserprofileFailed,TResult? Function( LoadingToUpdateUserPassword value)?  loadingtoupdateuserpassword,TResult? Function( UpdatingUserPasswordSuccessfully value)?  updatinguserpasswordsuccessfully,TResult? Function( UpdatingUserPasswordFailed value)?  updatinguserpasswordFailed,TResult? Function( LoadingToUpdateUserPincode value)?  loadingtoupdateuserpincode,TResult? Function( UpdatingUserPincodeSuccessfully value)?  updatinguserpincodesuccessfully,TResult? Function( UpdatingUserPincodeFailed value)?  updatinguserpincodeFailed,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingToGetUserById() when loadingtogetuserbyid != null:
return loadingtogetuserbyid(_that);case GetUserByIdSuccessfully() when getuserbyidsuccessfully != null:
return getuserbyidsuccessfully(_that);case GetUserByIdFailed() when getuserbyidFailed != null:
return getuserbyidFailed(_that);case LoadingToUpdateUserProfile() when loadingtoupdateuserprofile != null:
return loadingtoupdateuserprofile(_that);case UpdatingUserProfileSuccessfully() when updatinguserprofilesuccessfully != null:
return updatinguserprofilesuccessfully(_that);case UpdatingUserProfileFailed() when updatinguserprofileFailed != null:
return updatinguserprofileFailed(_that);case LoadingToUpdateUserPassword() when loadingtoupdateuserpassword != null:
return loadingtoupdateuserpassword(_that);case UpdatingUserPasswordSuccessfully() when updatinguserpasswordsuccessfully != null:
return updatinguserpasswordsuccessfully(_that);case UpdatingUserPasswordFailed() when updatinguserpasswordFailed != null:
return updatinguserpasswordFailed(_that);case LoadingToUpdateUserPincode() when loadingtoupdateuserpincode != null:
return loadingtoupdateuserpincode(_that);case UpdatingUserPincodeSuccessfully() when updatinguserpincodesuccessfully != null:
return updatinguserpincodesuccessfully(_that);case UpdatingUserPincodeFailed() when updatinguserpincodeFailed != null:
return updatinguserpincodeFailed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingtogetuserbyid,TResult Function( AppResponse<Map<String, dynamic>> response)?  getuserbyidsuccessfully,TResult Function( String errormessage)?  getuserbyidFailed,TResult Function()?  loadingtoupdateuserprofile,TResult Function( AppResponse<Map<String, dynamic>> response)?  updatinguserprofilesuccessfully,TResult Function( String errormessage)?  updatinguserprofileFailed,TResult Function()?  loadingtoupdateuserpassword,TResult Function( AppResponse<Map<String, dynamic>> response)?  updatinguserpasswordsuccessfully,TResult Function( String errormessage)?  updatinguserpasswordFailed,TResult Function()?  loadingtoupdateuserpincode,TResult Function( AppResponse<Map<String, dynamic>> response)?  updatinguserpincodesuccessfully,TResult Function( String errormessage)?  updatinguserpincodeFailed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingToGetUserById() when loadingtogetuserbyid != null:
return loadingtogetuserbyid();case GetUserByIdSuccessfully() when getuserbyidsuccessfully != null:
return getuserbyidsuccessfully(_that.response);case GetUserByIdFailed() when getuserbyidFailed != null:
return getuserbyidFailed(_that.errormessage);case LoadingToUpdateUserProfile() when loadingtoupdateuserprofile != null:
return loadingtoupdateuserprofile();case UpdatingUserProfileSuccessfully() when updatinguserprofilesuccessfully != null:
return updatinguserprofilesuccessfully(_that.response);case UpdatingUserProfileFailed() when updatinguserprofileFailed != null:
return updatinguserprofileFailed(_that.errormessage);case LoadingToUpdateUserPassword() when loadingtoupdateuserpassword != null:
return loadingtoupdateuserpassword();case UpdatingUserPasswordSuccessfully() when updatinguserpasswordsuccessfully != null:
return updatinguserpasswordsuccessfully(_that.response);case UpdatingUserPasswordFailed() when updatinguserpasswordFailed != null:
return updatinguserpasswordFailed(_that.errormessage);case LoadingToUpdateUserPincode() when loadingtoupdateuserpincode != null:
return loadingtoupdateuserpincode();case UpdatingUserPincodeSuccessfully() when updatinguserpincodesuccessfully != null:
return updatinguserpincodesuccessfully(_that.response);case UpdatingUserPincodeFailed() when updatinguserpincodeFailed != null:
return updatinguserpincodeFailed(_that.errormessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingtogetuserbyid,required TResult Function( AppResponse<Map<String, dynamic>> response)  getuserbyidsuccessfully,required TResult Function( String errormessage)  getuserbyidFailed,required TResult Function()  loadingtoupdateuserprofile,required TResult Function( AppResponse<Map<String, dynamic>> response)  updatinguserprofilesuccessfully,required TResult Function( String errormessage)  updatinguserprofileFailed,required TResult Function()  loadingtoupdateuserpassword,required TResult Function( AppResponse<Map<String, dynamic>> response)  updatinguserpasswordsuccessfully,required TResult Function( String errormessage)  updatinguserpasswordFailed,required TResult Function()  loadingtoupdateuserpincode,required TResult Function( AppResponse<Map<String, dynamic>> response)  updatinguserpincodesuccessfully,required TResult Function( String errormessage)  updatinguserpincodeFailed,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case LoadingToGetUserById():
return loadingtogetuserbyid();case GetUserByIdSuccessfully():
return getuserbyidsuccessfully(_that.response);case GetUserByIdFailed():
return getuserbyidFailed(_that.errormessage);case LoadingToUpdateUserProfile():
return loadingtoupdateuserprofile();case UpdatingUserProfileSuccessfully():
return updatinguserprofilesuccessfully(_that.response);case UpdatingUserProfileFailed():
return updatinguserprofileFailed(_that.errormessage);case LoadingToUpdateUserPassword():
return loadingtoupdateuserpassword();case UpdatingUserPasswordSuccessfully():
return updatinguserpasswordsuccessfully(_that.response);case UpdatingUserPasswordFailed():
return updatinguserpasswordFailed(_that.errormessage);case LoadingToUpdateUserPincode():
return loadingtoupdateuserpincode();case UpdatingUserPincodeSuccessfully():
return updatinguserpincodesuccessfully(_that.response);case UpdatingUserPincodeFailed():
return updatinguserpincodeFailed(_that.errormessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingtogetuserbyid,TResult? Function( AppResponse<Map<String, dynamic>> response)?  getuserbyidsuccessfully,TResult? Function( String errormessage)?  getuserbyidFailed,TResult? Function()?  loadingtoupdateuserprofile,TResult? Function( AppResponse<Map<String, dynamic>> response)?  updatinguserprofilesuccessfully,TResult? Function( String errormessage)?  updatinguserprofileFailed,TResult? Function()?  loadingtoupdateuserpassword,TResult? Function( AppResponse<Map<String, dynamic>> response)?  updatinguserpasswordsuccessfully,TResult? Function( String errormessage)?  updatinguserpasswordFailed,TResult? Function()?  loadingtoupdateuserpincode,TResult? Function( AppResponse<Map<String, dynamic>> response)?  updatinguserpincodesuccessfully,TResult? Function( String errormessage)?  updatinguserpincodeFailed,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingToGetUserById() when loadingtogetuserbyid != null:
return loadingtogetuserbyid();case GetUserByIdSuccessfully() when getuserbyidsuccessfully != null:
return getuserbyidsuccessfully(_that.response);case GetUserByIdFailed() when getuserbyidFailed != null:
return getuserbyidFailed(_that.errormessage);case LoadingToUpdateUserProfile() when loadingtoupdateuserprofile != null:
return loadingtoupdateuserprofile();case UpdatingUserProfileSuccessfully() when updatinguserprofilesuccessfully != null:
return updatinguserprofilesuccessfully(_that.response);case UpdatingUserProfileFailed() when updatinguserprofileFailed != null:
return updatinguserprofileFailed(_that.errormessage);case LoadingToUpdateUserPassword() when loadingtoupdateuserpassword != null:
return loadingtoupdateuserpassword();case UpdatingUserPasswordSuccessfully() when updatinguserpasswordsuccessfully != null:
return updatinguserpasswordsuccessfully(_that.response);case UpdatingUserPasswordFailed() when updatinguserpasswordFailed != null:
return updatinguserpasswordFailed(_that.errormessage);case LoadingToUpdateUserPincode() when loadingtoupdateuserpincode != null:
return loadingtoupdateuserpincode();case UpdatingUserPincodeSuccessfully() when updatinguserpincodesuccessfully != null:
return updatinguserpincodesuccessfully(_that.response);case UpdatingUserPincodeFailed() when updatinguserpincodeFailed != null:
return updatinguserpincodeFailed(_that.errormessage);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements UsermanagementState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UsermanagementState.initial()';
}


}




/// @nodoc


class LoadingToGetUserById implements UsermanagementState {
  const LoadingToGetUserById();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingToGetUserById);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UsermanagementState.loadingtogetuserbyid()';
}


}




/// @nodoc


class GetUserByIdSuccessfully implements UsermanagementState {
  const GetUserByIdSuccessfully({required this.response});
  

 final  AppResponse<Map<String, dynamic>> response;

/// Create a copy of UsermanagementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUserByIdSuccessfullyCopyWith<GetUserByIdSuccessfully> get copyWith => _$GetUserByIdSuccessfullyCopyWithImpl<GetUserByIdSuccessfully>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserByIdSuccessfully&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'UsermanagementState.getuserbyidsuccessfully(response: $response)';
}


}

/// @nodoc
abstract mixin class $GetUserByIdSuccessfullyCopyWith<$Res> implements $UsermanagementStateCopyWith<$Res> {
  factory $GetUserByIdSuccessfullyCopyWith(GetUserByIdSuccessfully value, $Res Function(GetUserByIdSuccessfully) _then) = _$GetUserByIdSuccessfullyCopyWithImpl;
@useResult
$Res call({
 AppResponse<Map<String, dynamic>> response
});




}
/// @nodoc
class _$GetUserByIdSuccessfullyCopyWithImpl<$Res>
    implements $GetUserByIdSuccessfullyCopyWith<$Res> {
  _$GetUserByIdSuccessfullyCopyWithImpl(this._self, this._then);

  final GetUserByIdSuccessfully _self;
  final $Res Function(GetUserByIdSuccessfully) _then;

/// Create a copy of UsermanagementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(GetUserByIdSuccessfully(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as AppResponse<Map<String, dynamic>>,
  ));
}


}

/// @nodoc


class GetUserByIdFailed implements UsermanagementState {
  const GetUserByIdFailed({required this.errormessage});
  

 final  String errormessage;

/// Create a copy of UsermanagementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUserByIdFailedCopyWith<GetUserByIdFailed> get copyWith => _$GetUserByIdFailedCopyWithImpl<GetUserByIdFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserByIdFailed&&(identical(other.errormessage, errormessage) || other.errormessage == errormessage));
}


@override
int get hashCode => Object.hash(runtimeType,errormessage);

@override
String toString() {
  return 'UsermanagementState.getuserbyidFailed(errormessage: $errormessage)';
}


}

/// @nodoc
abstract mixin class $GetUserByIdFailedCopyWith<$Res> implements $UsermanagementStateCopyWith<$Res> {
  factory $GetUserByIdFailedCopyWith(GetUserByIdFailed value, $Res Function(GetUserByIdFailed) _then) = _$GetUserByIdFailedCopyWithImpl;
@useResult
$Res call({
 String errormessage
});




}
/// @nodoc
class _$GetUserByIdFailedCopyWithImpl<$Res>
    implements $GetUserByIdFailedCopyWith<$Res> {
  _$GetUserByIdFailedCopyWithImpl(this._self, this._then);

  final GetUserByIdFailed _self;
  final $Res Function(GetUserByIdFailed) _then;

/// Create a copy of UsermanagementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errormessage = null,}) {
  return _then(GetUserByIdFailed(
errormessage: null == errormessage ? _self.errormessage : errormessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadingToUpdateUserProfile implements UsermanagementState {
  const LoadingToUpdateUserProfile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingToUpdateUserProfile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UsermanagementState.loadingtoupdateuserprofile()';
}


}




/// @nodoc


class UpdatingUserProfileSuccessfully implements UsermanagementState {
  const UpdatingUserProfileSuccessfully({required this.response});
  

 final  AppResponse<Map<String, dynamic>> response;

/// Create a copy of UsermanagementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatingUserProfileSuccessfullyCopyWith<UpdatingUserProfileSuccessfully> get copyWith => _$UpdatingUserProfileSuccessfullyCopyWithImpl<UpdatingUserProfileSuccessfully>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatingUserProfileSuccessfully&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'UsermanagementState.updatinguserprofilesuccessfully(response: $response)';
}


}

/// @nodoc
abstract mixin class $UpdatingUserProfileSuccessfullyCopyWith<$Res> implements $UsermanagementStateCopyWith<$Res> {
  factory $UpdatingUserProfileSuccessfullyCopyWith(UpdatingUserProfileSuccessfully value, $Res Function(UpdatingUserProfileSuccessfully) _then) = _$UpdatingUserProfileSuccessfullyCopyWithImpl;
@useResult
$Res call({
 AppResponse<Map<String, dynamic>> response
});




}
/// @nodoc
class _$UpdatingUserProfileSuccessfullyCopyWithImpl<$Res>
    implements $UpdatingUserProfileSuccessfullyCopyWith<$Res> {
  _$UpdatingUserProfileSuccessfullyCopyWithImpl(this._self, this._then);

  final UpdatingUserProfileSuccessfully _self;
  final $Res Function(UpdatingUserProfileSuccessfully) _then;

/// Create a copy of UsermanagementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(UpdatingUserProfileSuccessfully(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as AppResponse<Map<String, dynamic>>,
  ));
}


}

/// @nodoc


class UpdatingUserProfileFailed implements UsermanagementState {
  const UpdatingUserProfileFailed({required this.errormessage});
  

 final  String errormessage;

/// Create a copy of UsermanagementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatingUserProfileFailedCopyWith<UpdatingUserProfileFailed> get copyWith => _$UpdatingUserProfileFailedCopyWithImpl<UpdatingUserProfileFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatingUserProfileFailed&&(identical(other.errormessage, errormessage) || other.errormessage == errormessage));
}


@override
int get hashCode => Object.hash(runtimeType,errormessage);

@override
String toString() {
  return 'UsermanagementState.updatinguserprofileFailed(errormessage: $errormessage)';
}


}

/// @nodoc
abstract mixin class $UpdatingUserProfileFailedCopyWith<$Res> implements $UsermanagementStateCopyWith<$Res> {
  factory $UpdatingUserProfileFailedCopyWith(UpdatingUserProfileFailed value, $Res Function(UpdatingUserProfileFailed) _then) = _$UpdatingUserProfileFailedCopyWithImpl;
@useResult
$Res call({
 String errormessage
});




}
/// @nodoc
class _$UpdatingUserProfileFailedCopyWithImpl<$Res>
    implements $UpdatingUserProfileFailedCopyWith<$Res> {
  _$UpdatingUserProfileFailedCopyWithImpl(this._self, this._then);

  final UpdatingUserProfileFailed _self;
  final $Res Function(UpdatingUserProfileFailed) _then;

/// Create a copy of UsermanagementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errormessage = null,}) {
  return _then(UpdatingUserProfileFailed(
errormessage: null == errormessage ? _self.errormessage : errormessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadingToUpdateUserPassword implements UsermanagementState {
  const LoadingToUpdateUserPassword();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingToUpdateUserPassword);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UsermanagementState.loadingtoupdateuserpassword()';
}


}




/// @nodoc


class UpdatingUserPasswordSuccessfully implements UsermanagementState {
  const UpdatingUserPasswordSuccessfully({required this.response});
  

 final  AppResponse<Map<String, dynamic>> response;

/// Create a copy of UsermanagementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatingUserPasswordSuccessfullyCopyWith<UpdatingUserPasswordSuccessfully> get copyWith => _$UpdatingUserPasswordSuccessfullyCopyWithImpl<UpdatingUserPasswordSuccessfully>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatingUserPasswordSuccessfully&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'UsermanagementState.updatinguserpasswordsuccessfully(response: $response)';
}


}

/// @nodoc
abstract mixin class $UpdatingUserPasswordSuccessfullyCopyWith<$Res> implements $UsermanagementStateCopyWith<$Res> {
  factory $UpdatingUserPasswordSuccessfullyCopyWith(UpdatingUserPasswordSuccessfully value, $Res Function(UpdatingUserPasswordSuccessfully) _then) = _$UpdatingUserPasswordSuccessfullyCopyWithImpl;
@useResult
$Res call({
 AppResponse<Map<String, dynamic>> response
});




}
/// @nodoc
class _$UpdatingUserPasswordSuccessfullyCopyWithImpl<$Res>
    implements $UpdatingUserPasswordSuccessfullyCopyWith<$Res> {
  _$UpdatingUserPasswordSuccessfullyCopyWithImpl(this._self, this._then);

  final UpdatingUserPasswordSuccessfully _self;
  final $Res Function(UpdatingUserPasswordSuccessfully) _then;

/// Create a copy of UsermanagementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(UpdatingUserPasswordSuccessfully(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as AppResponse<Map<String, dynamic>>,
  ));
}


}

/// @nodoc


class UpdatingUserPasswordFailed implements UsermanagementState {
  const UpdatingUserPasswordFailed({required this.errormessage});
  

 final  String errormessage;

/// Create a copy of UsermanagementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatingUserPasswordFailedCopyWith<UpdatingUserPasswordFailed> get copyWith => _$UpdatingUserPasswordFailedCopyWithImpl<UpdatingUserPasswordFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatingUserPasswordFailed&&(identical(other.errormessage, errormessage) || other.errormessage == errormessage));
}


@override
int get hashCode => Object.hash(runtimeType,errormessage);

@override
String toString() {
  return 'UsermanagementState.updatinguserpasswordFailed(errormessage: $errormessage)';
}


}

/// @nodoc
abstract mixin class $UpdatingUserPasswordFailedCopyWith<$Res> implements $UsermanagementStateCopyWith<$Res> {
  factory $UpdatingUserPasswordFailedCopyWith(UpdatingUserPasswordFailed value, $Res Function(UpdatingUserPasswordFailed) _then) = _$UpdatingUserPasswordFailedCopyWithImpl;
@useResult
$Res call({
 String errormessage
});




}
/// @nodoc
class _$UpdatingUserPasswordFailedCopyWithImpl<$Res>
    implements $UpdatingUserPasswordFailedCopyWith<$Res> {
  _$UpdatingUserPasswordFailedCopyWithImpl(this._self, this._then);

  final UpdatingUserPasswordFailed _self;
  final $Res Function(UpdatingUserPasswordFailed) _then;

/// Create a copy of UsermanagementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errormessage = null,}) {
  return _then(UpdatingUserPasswordFailed(
errormessage: null == errormessage ? _self.errormessage : errormessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadingToUpdateUserPincode implements UsermanagementState {
  const LoadingToUpdateUserPincode();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingToUpdateUserPincode);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UsermanagementState.loadingtoupdateuserpincode()';
}


}




/// @nodoc


class UpdatingUserPincodeSuccessfully implements UsermanagementState {
  const UpdatingUserPincodeSuccessfully({required this.response});
  

 final  AppResponse<Map<String, dynamic>> response;

/// Create a copy of UsermanagementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatingUserPincodeSuccessfullyCopyWith<UpdatingUserPincodeSuccessfully> get copyWith => _$UpdatingUserPincodeSuccessfullyCopyWithImpl<UpdatingUserPincodeSuccessfully>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatingUserPincodeSuccessfully&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'UsermanagementState.updatinguserpincodesuccessfully(response: $response)';
}


}

/// @nodoc
abstract mixin class $UpdatingUserPincodeSuccessfullyCopyWith<$Res> implements $UsermanagementStateCopyWith<$Res> {
  factory $UpdatingUserPincodeSuccessfullyCopyWith(UpdatingUserPincodeSuccessfully value, $Res Function(UpdatingUserPincodeSuccessfully) _then) = _$UpdatingUserPincodeSuccessfullyCopyWithImpl;
@useResult
$Res call({
 AppResponse<Map<String, dynamic>> response
});




}
/// @nodoc
class _$UpdatingUserPincodeSuccessfullyCopyWithImpl<$Res>
    implements $UpdatingUserPincodeSuccessfullyCopyWith<$Res> {
  _$UpdatingUserPincodeSuccessfullyCopyWithImpl(this._self, this._then);

  final UpdatingUserPincodeSuccessfully _self;
  final $Res Function(UpdatingUserPincodeSuccessfully) _then;

/// Create a copy of UsermanagementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(UpdatingUserPincodeSuccessfully(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as AppResponse<Map<String, dynamic>>,
  ));
}


}

/// @nodoc


class UpdatingUserPincodeFailed implements UsermanagementState {
  const UpdatingUserPincodeFailed({required this.errormessage});
  

 final  String errormessage;

/// Create a copy of UsermanagementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatingUserPincodeFailedCopyWith<UpdatingUserPincodeFailed> get copyWith => _$UpdatingUserPincodeFailedCopyWithImpl<UpdatingUserPincodeFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatingUserPincodeFailed&&(identical(other.errormessage, errormessage) || other.errormessage == errormessage));
}


@override
int get hashCode => Object.hash(runtimeType,errormessage);

@override
String toString() {
  return 'UsermanagementState.updatinguserpincodeFailed(errormessage: $errormessage)';
}


}

/// @nodoc
abstract mixin class $UpdatingUserPincodeFailedCopyWith<$Res> implements $UsermanagementStateCopyWith<$Res> {
  factory $UpdatingUserPincodeFailedCopyWith(UpdatingUserPincodeFailed value, $Res Function(UpdatingUserPincodeFailed) _then) = _$UpdatingUserPincodeFailedCopyWithImpl;
@useResult
$Res call({
 String errormessage
});




}
/// @nodoc
class _$UpdatingUserPincodeFailedCopyWithImpl<$Res>
    implements $UpdatingUserPincodeFailedCopyWith<$Res> {
  _$UpdatingUserPincodeFailedCopyWithImpl(this._self, this._then);

  final UpdatingUserPincodeFailed _self;
  final $Res Function(UpdatingUserPincodeFailed) _then;

/// Create a copy of UsermanagementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errormessage = null,}) {
  return _then(UpdatingUserPincodeFailed(
errormessage: null == errormessage ? _self.errormessage : errormessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$UsermanagementEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsermanagementEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UsermanagementEvent()';
}


}

/// @nodoc
class $UsermanagementEventCopyWith<$Res>  {
$UsermanagementEventCopyWith(UsermanagementEvent _, $Res Function(UsermanagementEvent) __);
}


/// Adds pattern-matching-related methods to [UsermanagementEvent].
extension UsermanagementEventPatterns on UsermanagementEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UpdateUserProfile value)?  updateprofile,TResult Function( UpdatePassword value)?  updatepassword,TResult Function( UpdatePinCode value)?  updatepincode,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UpdateUserProfile() when updateprofile != null:
return updateprofile(_that);case UpdatePassword() when updatepassword != null:
return updatepassword(_that);case UpdatePinCode() when updatepincode != null:
return updatepincode(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UpdateUserProfile value)  updateprofile,required TResult Function( UpdatePassword value)  updatepassword,required TResult Function( UpdatePinCode value)  updatepincode,}){
final _that = this;
switch (_that) {
case UpdateUserProfile():
return updateprofile(_that);case UpdatePassword():
return updatepassword(_that);case UpdatePinCode():
return updatepincode(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UpdateUserProfile value)?  updateprofile,TResult? Function( UpdatePassword value)?  updatepassword,TResult? Function( UpdatePinCode value)?  updatepincode,}){
final _that = this;
switch (_that) {
case UpdateUserProfile() when updateprofile != null:
return updateprofile(_that);case UpdatePassword() when updatepassword != null:
return updatepassword(_that);case UpdatePinCode() when updatepincode != null:
return updatepincode(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( UpdateProfile updateprofile)?  updateprofile,TResult Function( ChangePassword changepassword)?  updatepassword,TResult Function( ChangePinCode changepincode)?  updatepincode,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UpdateUserProfile() when updateprofile != null:
return updateprofile(_that.updateprofile);case UpdatePassword() when updatepassword != null:
return updatepassword(_that.changepassword);case UpdatePinCode() when updatepincode != null:
return updatepincode(_that.changepincode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( UpdateProfile updateprofile)  updateprofile,required TResult Function( ChangePassword changepassword)  updatepassword,required TResult Function( ChangePinCode changepincode)  updatepincode,}) {final _that = this;
switch (_that) {
case UpdateUserProfile():
return updateprofile(_that.updateprofile);case UpdatePassword():
return updatepassword(_that.changepassword);case UpdatePinCode():
return updatepincode(_that.changepincode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( UpdateProfile updateprofile)?  updateprofile,TResult? Function( ChangePassword changepassword)?  updatepassword,TResult? Function( ChangePinCode changepincode)?  updatepincode,}) {final _that = this;
switch (_that) {
case UpdateUserProfile() when updateprofile != null:
return updateprofile(_that.updateprofile);case UpdatePassword() when updatepassword != null:
return updatepassword(_that.changepassword);case UpdatePinCode() when updatepincode != null:
return updatepincode(_that.changepincode);case _:
  return null;

}
}

}

/// @nodoc


class UpdateUserProfile implements UsermanagementEvent {
  const UpdateUserProfile({required this.updateprofile});
  

 final  UpdateProfile updateprofile;

/// Create a copy of UsermanagementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateUserProfileCopyWith<UpdateUserProfile> get copyWith => _$UpdateUserProfileCopyWithImpl<UpdateUserProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateUserProfile&&(identical(other.updateprofile, updateprofile) || other.updateprofile == updateprofile));
}


@override
int get hashCode => Object.hash(runtimeType,updateprofile);

@override
String toString() {
  return 'UsermanagementEvent.updateprofile(updateprofile: $updateprofile)';
}


}

/// @nodoc
abstract mixin class $UpdateUserProfileCopyWith<$Res> implements $UsermanagementEventCopyWith<$Res> {
  factory $UpdateUserProfileCopyWith(UpdateUserProfile value, $Res Function(UpdateUserProfile) _then) = _$UpdateUserProfileCopyWithImpl;
@useResult
$Res call({
 UpdateProfile updateprofile
});


$UpdateProfileCopyWith<$Res> get updateprofile;

}
/// @nodoc
class _$UpdateUserProfileCopyWithImpl<$Res>
    implements $UpdateUserProfileCopyWith<$Res> {
  _$UpdateUserProfileCopyWithImpl(this._self, this._then);

  final UpdateUserProfile _self;
  final $Res Function(UpdateUserProfile) _then;

/// Create a copy of UsermanagementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? updateprofile = null,}) {
  return _then(UpdateUserProfile(
updateprofile: null == updateprofile ? _self.updateprofile : updateprofile // ignore: cast_nullable_to_non_nullable
as UpdateProfile,
  ));
}

/// Create a copy of UsermanagementEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdateProfileCopyWith<$Res> get updateprofile {
  
  return $UpdateProfileCopyWith<$Res>(_self.updateprofile, (value) {
    return _then(_self.copyWith(updateprofile: value));
  });
}
}

/// @nodoc


class UpdatePassword implements UsermanagementEvent {
  const UpdatePassword({required this.changepassword});
  

 final  ChangePassword changepassword;

/// Create a copy of UsermanagementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePasswordCopyWith<UpdatePassword> get copyWith => _$UpdatePasswordCopyWithImpl<UpdatePassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePassword&&(identical(other.changepassword, changepassword) || other.changepassword == changepassword));
}


@override
int get hashCode => Object.hash(runtimeType,changepassword);

@override
String toString() {
  return 'UsermanagementEvent.updatepassword(changepassword: $changepassword)';
}


}

/// @nodoc
abstract mixin class $UpdatePasswordCopyWith<$Res> implements $UsermanagementEventCopyWith<$Res> {
  factory $UpdatePasswordCopyWith(UpdatePassword value, $Res Function(UpdatePassword) _then) = _$UpdatePasswordCopyWithImpl;
@useResult
$Res call({
 ChangePassword changepassword
});


$ChangePasswordCopyWith<$Res> get changepassword;

}
/// @nodoc
class _$UpdatePasswordCopyWithImpl<$Res>
    implements $UpdatePasswordCopyWith<$Res> {
  _$UpdatePasswordCopyWithImpl(this._self, this._then);

  final UpdatePassword _self;
  final $Res Function(UpdatePassword) _then;

/// Create a copy of UsermanagementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? changepassword = null,}) {
  return _then(UpdatePassword(
changepassword: null == changepassword ? _self.changepassword : changepassword // ignore: cast_nullable_to_non_nullable
as ChangePassword,
  ));
}

/// Create a copy of UsermanagementEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChangePasswordCopyWith<$Res> get changepassword {
  
  return $ChangePasswordCopyWith<$Res>(_self.changepassword, (value) {
    return _then(_self.copyWith(changepassword: value));
  });
}
}

/// @nodoc


class UpdatePinCode implements UsermanagementEvent {
  const UpdatePinCode({required this.changepincode});
  

 final  ChangePinCode changepincode;

/// Create a copy of UsermanagementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePinCodeCopyWith<UpdatePinCode> get copyWith => _$UpdatePinCodeCopyWithImpl<UpdatePinCode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePinCode&&(identical(other.changepincode, changepincode) || other.changepincode == changepincode));
}


@override
int get hashCode => Object.hash(runtimeType,changepincode);

@override
String toString() {
  return 'UsermanagementEvent.updatepincode(changepincode: $changepincode)';
}


}

/// @nodoc
abstract mixin class $UpdatePinCodeCopyWith<$Res> implements $UsermanagementEventCopyWith<$Res> {
  factory $UpdatePinCodeCopyWith(UpdatePinCode value, $Res Function(UpdatePinCode) _then) = _$UpdatePinCodeCopyWithImpl;
@useResult
$Res call({
 ChangePinCode changepincode
});


$ChangePinCodeCopyWith<$Res> get changepincode;

}
/// @nodoc
class _$UpdatePinCodeCopyWithImpl<$Res>
    implements $UpdatePinCodeCopyWith<$Res> {
  _$UpdatePinCodeCopyWithImpl(this._self, this._then);

  final UpdatePinCode _self;
  final $Res Function(UpdatePinCode) _then;

/// Create a copy of UsermanagementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? changepincode = null,}) {
  return _then(UpdatePinCode(
changepincode: null == changepincode ? _self.changepincode : changepincode // ignore: cast_nullable_to_non_nullable
as ChangePinCode,
  ));
}

/// Create a copy of UsermanagementEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChangePinCodeCopyWith<$Res> get changepincode {
  
  return $ChangePinCodeCopyWith<$Res>(_self.changepincode, (value) {
    return _then(_self.copyWith(changepincode: value));
  });
}
}

// dart format on
