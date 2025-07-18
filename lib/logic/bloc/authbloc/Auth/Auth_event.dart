part of 'Auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.registerUser({required User user}) = RegisterUser;
  
}