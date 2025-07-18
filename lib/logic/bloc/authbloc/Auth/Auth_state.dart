part of 'Auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.loadInProgress() = LoadInProgress;
  const factory AuthState.registrationSuccess({ required AppResponse<Map<String,dynamic>> response,}) = RegistrationSuccess;
  const factory AuthState.registrationFailure({required String message}) = RegistrationFailure;
}   