part of 'Auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.registerUser({required User user}) = RegisterUser;
  const factory AuthEvent.loginUser({required User user}) = LoginUser;
  const factory AuthEvent.loginwithToken() = LoginWithToken;
  const factory AuthEvent.logout() = LogOut;
}