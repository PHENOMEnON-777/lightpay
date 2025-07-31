// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ThemeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThemeState()';
}


}

/// @nodoc
class $ThemeStateCopyWith<$Res>  {
$ThemeStateCopyWith(ThemeState _, $Res Function(ThemeState) __);
}


/// Adds pattern-matching-related methods to [ThemeState].
extension ThemeStatePatterns on ThemeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( ChangingAppMode value)?  changingappmode,TResult Function( ChangingAppModeSuccessfully value)?  changingappmodesuccessfully,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ChangingAppMode() when changingappmode != null:
return changingappmode(_that);case ChangingAppModeSuccessfully() when changingappmodesuccessfully != null:
return changingappmodesuccessfully(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( ChangingAppMode value)  changingappmode,required TResult Function( ChangingAppModeSuccessfully value)  changingappmodesuccessfully,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case ChangingAppMode():
return changingappmode(_that);case ChangingAppModeSuccessfully():
return changingappmodesuccessfully(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( ChangingAppMode value)?  changingappmode,TResult? Function( ChangingAppModeSuccessfully value)?  changingappmodesuccessfully,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ChangingAppMode() when changingappmode != null:
return changingappmode(_that);case ChangingAppModeSuccessfully() when changingappmodesuccessfully != null:
return changingappmodesuccessfully(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ThemeData themeData)?  initial,TResult Function()?  changingappmode,TResult Function( ThemeData themeData)?  changingappmodesuccessfully,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.themeData);case ChangingAppMode() when changingappmode != null:
return changingappmode();case ChangingAppModeSuccessfully() when changingappmodesuccessfully != null:
return changingappmodesuccessfully(_that.themeData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ThemeData themeData)  initial,required TResult Function()  changingappmode,required TResult Function( ThemeData themeData)  changingappmodesuccessfully,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.themeData);case ChangingAppMode():
return changingappmode();case ChangingAppModeSuccessfully():
return changingappmodesuccessfully(_that.themeData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ThemeData themeData)?  initial,TResult? Function()?  changingappmode,TResult? Function( ThemeData themeData)?  changingappmodesuccessfully,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.themeData);case ChangingAppMode() when changingappmode != null:
return changingappmode();case ChangingAppModeSuccessfully() when changingappmodesuccessfully != null:
return changingappmodesuccessfully(_that.themeData);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ThemeState {
  const _Initial({required this.themeData});
  

 final  ThemeData themeData;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.themeData, themeData) || other.themeData == themeData));
}


@override
int get hashCode => Object.hash(runtimeType,themeData);

@override
String toString() {
  return 'ThemeState.initial(themeData: $themeData)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@useResult
$Res call({
 ThemeData themeData
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? themeData = null,}) {
  return _then(_Initial(
themeData: null == themeData ? _self.themeData : themeData // ignore: cast_nullable_to_non_nullable
as ThemeData,
  ));
}


}

/// @nodoc


class ChangingAppMode implements ThemeState {
  const ChangingAppMode();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangingAppMode);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThemeState.changingappmode()';
}


}




/// @nodoc


class ChangingAppModeSuccessfully implements ThemeState {
  const ChangingAppModeSuccessfully({required this.themeData});
  

 final  ThemeData themeData;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangingAppModeSuccessfullyCopyWith<ChangingAppModeSuccessfully> get copyWith => _$ChangingAppModeSuccessfullyCopyWithImpl<ChangingAppModeSuccessfully>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangingAppModeSuccessfully&&(identical(other.themeData, themeData) || other.themeData == themeData));
}


@override
int get hashCode => Object.hash(runtimeType,themeData);

@override
String toString() {
  return 'ThemeState.changingappmodesuccessfully(themeData: $themeData)';
}


}

/// @nodoc
abstract mixin class $ChangingAppModeSuccessfullyCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory $ChangingAppModeSuccessfullyCopyWith(ChangingAppModeSuccessfully value, $Res Function(ChangingAppModeSuccessfully) _then) = _$ChangingAppModeSuccessfullyCopyWithImpl;
@useResult
$Res call({
 ThemeData themeData
});




}
/// @nodoc
class _$ChangingAppModeSuccessfullyCopyWithImpl<$Res>
    implements $ChangingAppModeSuccessfullyCopyWith<$Res> {
  _$ChangingAppModeSuccessfullyCopyWithImpl(this._self, this._then);

  final ChangingAppModeSuccessfully _self;
  final $Res Function(ChangingAppModeSuccessfully) _then;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? themeData = null,}) {
  return _then(ChangingAppModeSuccessfully(
themeData: null == themeData ? _self.themeData : themeData // ignore: cast_nullable_to_non_nullable
as ThemeData,
  ));
}


}

/// @nodoc
mixin _$ThemeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThemeEvent()';
}


}

/// @nodoc
class $ThemeEventCopyWith<$Res>  {
$ThemeEventCopyWith(ThemeEvent _, $Res Function(ThemeEvent) __);
}


/// Adds pattern-matching-related methods to [ThemeEvent].
extension ThemeEventPatterns on ThemeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChangeAPPMode value)?  changeappmode,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChangeAPPMode() when changeappmode != null:
return changeappmode(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChangeAPPMode value)  changeappmode,}){
final _that = this;
switch (_that) {
case ChangeAPPMode():
return changeappmode(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChangeAPPMode value)?  changeappmode,}){
final _that = this;
switch (_that) {
case ChangeAPPMode() when changeappmode != null:
return changeappmode(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  changeappmode,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChangeAPPMode() when changeappmode != null:
return changeappmode();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  changeappmode,}) {final _that = this;
switch (_that) {
case ChangeAPPMode():
return changeappmode();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  changeappmode,}) {final _that = this;
switch (_that) {
case ChangeAPPMode() when changeappmode != null:
return changeappmode();case _:
  return null;

}
}

}

/// @nodoc


class ChangeAPPMode implements ThemeEvent {
  const ChangeAPPMode();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeAPPMode);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThemeEvent.changeappmode()';
}


}




// dart format on
