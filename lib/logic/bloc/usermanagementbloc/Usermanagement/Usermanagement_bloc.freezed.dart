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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( LoadingToGetUserById value)?  loadingtogetuserbyid,TResult Function( GetUserByIdSuccessfully value)?  getuserbyidsuccessfully,TResult Function( GetUserByIdFailed value)?  getuserbyidFailed,TResult Function( LoadingToUpdateUserProfile value)?  loadingtoupdateuserprofile,TResult Function( UpdatingUserProfileSuccessfully value)?  updatinguserprofilesuccessfully,TResult Function( UpdatingUserProfileFailed value)?  updatinguserprofileFailed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingToGetUserById() when loadingtogetuserbyid != null:
return loadingtogetuserbyid(_that);case GetUserByIdSuccessfully() when getuserbyidsuccessfully != null:
return getuserbyidsuccessfully(_that);case GetUserByIdFailed() when getuserbyidFailed != null:
return getuserbyidFailed(_that);case LoadingToUpdateUserProfile() when loadingtoupdateuserprofile != null:
return loadingtoupdateuserprofile(_that);case UpdatingUserProfileSuccessfully() when updatinguserprofilesuccessfully != null:
return updatinguserprofilesuccessfully(_that);case UpdatingUserProfileFailed() when updatinguserprofileFailed != null:
return updatinguserprofileFailed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( LoadingToGetUserById value)  loadingtogetuserbyid,required TResult Function( GetUserByIdSuccessfully value)  getuserbyidsuccessfully,required TResult Function( GetUserByIdFailed value)  getuserbyidFailed,required TResult Function( LoadingToUpdateUserProfile value)  loadingtoupdateuserprofile,required TResult Function( UpdatingUserProfileSuccessfully value)  updatinguserprofilesuccessfully,required TResult Function( UpdatingUserProfileFailed value)  updatinguserprofileFailed,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case LoadingToGetUserById():
return loadingtogetuserbyid(_that);case GetUserByIdSuccessfully():
return getuserbyidsuccessfully(_that);case GetUserByIdFailed():
return getuserbyidFailed(_that);case LoadingToUpdateUserProfile():
return loadingtoupdateuserprofile(_that);case UpdatingUserProfileSuccessfully():
return updatinguserprofilesuccessfully(_that);case UpdatingUserProfileFailed():
return updatinguserprofileFailed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( LoadingToGetUserById value)?  loadingtogetuserbyid,TResult? Function( GetUserByIdSuccessfully value)?  getuserbyidsuccessfully,TResult? Function( GetUserByIdFailed value)?  getuserbyidFailed,TResult? Function( LoadingToUpdateUserProfile value)?  loadingtoupdateuserprofile,TResult? Function( UpdatingUserProfileSuccessfully value)?  updatinguserprofilesuccessfully,TResult? Function( UpdatingUserProfileFailed value)?  updatinguserprofileFailed,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingToGetUserById() when loadingtogetuserbyid != null:
return loadingtogetuserbyid(_that);case GetUserByIdSuccessfully() when getuserbyidsuccessfully != null:
return getuserbyidsuccessfully(_that);case GetUserByIdFailed() when getuserbyidFailed != null:
return getuserbyidFailed(_that);case LoadingToUpdateUserProfile() when loadingtoupdateuserprofile != null:
return loadingtoupdateuserprofile(_that);case UpdatingUserProfileSuccessfully() when updatinguserprofilesuccessfully != null:
return updatinguserprofilesuccessfully(_that);case UpdatingUserProfileFailed() when updatinguserprofileFailed != null:
return updatinguserprofileFailed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingtogetuserbyid,TResult Function( AppResponse<Map<String, dynamic>> response)?  getuserbyidsuccessfully,TResult Function( String errormessage)?  getuserbyidFailed,TResult Function()?  loadingtoupdateuserprofile,TResult Function( AppResponse<Map<String, dynamic>> response)?  updatinguserprofilesuccessfully,TResult Function( String errormessage)?  updatinguserprofileFailed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingToGetUserById() when loadingtogetuserbyid != null:
return loadingtogetuserbyid();case GetUserByIdSuccessfully() when getuserbyidsuccessfully != null:
return getuserbyidsuccessfully(_that.response);case GetUserByIdFailed() when getuserbyidFailed != null:
return getuserbyidFailed(_that.errormessage);case LoadingToUpdateUserProfile() when loadingtoupdateuserprofile != null:
return loadingtoupdateuserprofile();case UpdatingUserProfileSuccessfully() when updatinguserprofilesuccessfully != null:
return updatinguserprofilesuccessfully(_that.response);case UpdatingUserProfileFailed() when updatinguserprofileFailed != null:
return updatinguserprofileFailed(_that.errormessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingtogetuserbyid,required TResult Function( AppResponse<Map<String, dynamic>> response)  getuserbyidsuccessfully,required TResult Function( String errormessage)  getuserbyidFailed,required TResult Function()  loadingtoupdateuserprofile,required TResult Function( AppResponse<Map<String, dynamic>> response)  updatinguserprofilesuccessfully,required TResult Function( String errormessage)  updatinguserprofileFailed,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case LoadingToGetUserById():
return loadingtogetuserbyid();case GetUserByIdSuccessfully():
return getuserbyidsuccessfully(_that.response);case GetUserByIdFailed():
return getuserbyidFailed(_that.errormessage);case LoadingToUpdateUserProfile():
return loadingtoupdateuserprofile();case UpdatingUserProfileSuccessfully():
return updatinguserprofilesuccessfully(_that.response);case UpdatingUserProfileFailed():
return updatinguserprofileFailed(_that.errormessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingtogetuserbyid,TResult? Function( AppResponse<Map<String, dynamic>> response)?  getuserbyidsuccessfully,TResult? Function( String errormessage)?  getuserbyidFailed,TResult? Function()?  loadingtoupdateuserprofile,TResult? Function( AppResponse<Map<String, dynamic>> response)?  updatinguserprofilesuccessfully,TResult? Function( String errormessage)?  updatinguserprofileFailed,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingToGetUserById() when loadingtogetuserbyid != null:
return loadingtogetuserbyid();case GetUserByIdSuccessfully() when getuserbyidsuccessfully != null:
return getuserbyidsuccessfully(_that.response);case GetUserByIdFailed() when getuserbyidFailed != null:
return getuserbyidFailed(_that.errormessage);case LoadingToUpdateUserProfile() when loadingtoupdateuserprofile != null:
return loadingtoupdateuserprofile();case UpdatingUserProfileSuccessfully() when updatinguserprofilesuccessfully != null:
return updatinguserprofilesuccessfully(_that.response);case UpdatingUserProfileFailed() when updatinguserprofileFailed != null:
return updatinguserprofileFailed(_that.errormessage);case _:
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
mixin _$UsermanagementEvent {

 UpdateProfile get updateprofile;
/// Create a copy of UsermanagementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsermanagementEventCopyWith<UsermanagementEvent> get copyWith => _$UsermanagementEventCopyWithImpl<UsermanagementEvent>(this as UsermanagementEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsermanagementEvent&&(identical(other.updateprofile, updateprofile) || other.updateprofile == updateprofile));
}


@override
int get hashCode => Object.hash(runtimeType,updateprofile);

@override
String toString() {
  return 'UsermanagementEvent(updateprofile: $updateprofile)';
}


}

/// @nodoc
abstract mixin class $UsermanagementEventCopyWith<$Res>  {
  factory $UsermanagementEventCopyWith(UsermanagementEvent value, $Res Function(UsermanagementEvent) _then) = _$UsermanagementEventCopyWithImpl;
@useResult
$Res call({
 UpdateProfile updateprofile
});


$UpdateProfileCopyWith<$Res> get updateprofile;

}
/// @nodoc
class _$UsermanagementEventCopyWithImpl<$Res>
    implements $UsermanagementEventCopyWith<$Res> {
  _$UsermanagementEventCopyWithImpl(this._self, this._then);

  final UsermanagementEvent _self;
  final $Res Function(UsermanagementEvent) _then;

/// Create a copy of UsermanagementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? updateprofile = null,}) {
  return _then(_self.copyWith(
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UpdateUserProfile value)?  updateprofile,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UpdateUserProfile() when updateprofile != null:
return updateprofile(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UpdateUserProfile value)  updateprofile,}){
final _that = this;
switch (_that) {
case UpdateUserProfile():
return updateprofile(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UpdateUserProfile value)?  updateprofile,}){
final _that = this;
switch (_that) {
case UpdateUserProfile() when updateprofile != null:
return updateprofile(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( UpdateProfile updateprofile)?  updateprofile,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UpdateUserProfile() when updateprofile != null:
return updateprofile(_that.updateprofile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( UpdateProfile updateprofile)  updateprofile,}) {final _that = this;
switch (_that) {
case UpdateUserProfile():
return updateprofile(_that.updateprofile);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( UpdateProfile updateprofile)?  updateprofile,}) {final _that = this;
switch (_that) {
case UpdateUserProfile() when updateprofile != null:
return updateprofile(_that.updateprofile);case _:
  return null;

}
}

}

/// @nodoc


class UpdateUserProfile implements UsermanagementEvent {
  const UpdateUserProfile({required this.updateprofile});
  

@override final  UpdateProfile updateprofile;

/// Create a copy of UsermanagementEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
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
@override @useResult
$Res call({
 UpdateProfile updateprofile
});


@override $UpdateProfileCopyWith<$Res> get updateprofile;

}
/// @nodoc
class _$UpdateUserProfileCopyWithImpl<$Res>
    implements $UpdateUserProfileCopyWith<$Res> {
  _$UpdateUserProfileCopyWithImpl(this._self, this._then);

  final UpdateUserProfile _self;
  final $Res Function(UpdateUserProfile) _then;

/// Create a copy of UsermanagementEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? updateprofile = null,}) {
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

// dart format on
