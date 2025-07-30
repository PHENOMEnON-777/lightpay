import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/model/usermodel/user.dart';
import 'package:lightpay/data/provider/repository/Basedauthenticationrepository.dart';

part 'Auth_state.dart';
part 'Auth_event.dart';
part 'Auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent,AuthState>{
 final AuthenticationRepository authenticationRepository;
  AuthBloc({required this.authenticationRepository}) : super(const AuthState.initial()){
    on<RegisterUser>((event, emit) async{
      emit(AuthState.loadInProgress());
      try {
        final response = await authenticationRepository.registerUser(user: event.user);
        emit(AuthState.registrationSuccess(response: response));
      } catch (e) {
        emit(AuthState.registrationFailure(message: e.toString()));
      }
    });

    on<LoginUser>((event, emit) async{
      emit(AuthState.loadinglogin());
      try {
        final response = await authenticationRepository.loginUser(user: event.user);
        emit(AuthState.loginSuccess(response: response));
      } catch (e) {
        emit(AuthState.loginFailure(message: e.toString()));
      }
    });

    on<LoginWithToken>((event, emit) async{
      emit(AuthState.loadingwithtoken());
      try {
        final response = await authenticationRepository.loginwithtoken();
        emit(AuthState.loginwithtokensuccessfully(response: response));
      } catch (e) {
        emit(AuthState.loginwithtokenFailed(errormessage: e.toString()));
      }
    });
  }
}