part of 'Auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;

  const factory AuthState.loadInProgress() = LoadInProgress;
  const factory AuthState.registrationSuccess({ required AppResponse<Map<String,dynamic>> response,}) = RegistrationSuccess;
  const factory AuthState.registrationFailure({required String message}) = RegistrationFailure;

  const factory AuthState.loadinglogin() = LoadingLogin;
  const factory AuthState.loginSuccess({ required AppResponse<Map<String,dynamic>> response,}) = LoginSuccess;
  const factory AuthState.loginFailure({required String message}) = LoginFailure;

  const factory AuthState.loadingwithtoken() = LoadingToGetUserWithToken;
  const factory AuthState.loginwithtokensuccessfully({required AppResponse<Map<String,dynamic>> response}) = LoginWithTokenSuccessfully;
  const factory AuthState.loginwithtokenFailed({required String errormessage}) = LoginWithTokenFailed;

  const factory AuthState.logingoutuser() = LogingOutUser;
  const factory AuthState.logingoutusersuccessfully({required AppResponse<Map<String,dynamic>> response}) = LoginOUtUserSuccessfully;
  const factory AuthState.loginoutuserfailed({required  String errormessage}) = LoginOutUserFailed;
}   