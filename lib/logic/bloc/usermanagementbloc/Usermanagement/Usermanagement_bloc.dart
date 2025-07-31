import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/model/changepassword/changepassword.dart';
import 'package:lightpay/data/model/changepincode/changepincode.dart';
import 'package:lightpay/data/model/usermangament/updateprofile/updateprofile.dart';
import 'package:lightpay/data/provider/repository/usermanagementrepository.dart';

part 'Usermanagement_state.dart';
part 'Usermanagement_event.dart';
part 'Usermanagement_bloc.freezed.dart';

class UsermanagementBloc extends Bloc<UsermanagementEvent,UsermanagementState>{
  final UserManagementRepository userManagementRepository;
  UsermanagementBloc({required this.userManagementRepository}) : super(const UsermanagementState.initial()){

    on<UpdateUserProfile>((event, emit) async{
     emit(UsermanagementState.loadingtoupdateuserprofile());
     try {
      final response = await userManagementRepository.updateuserprofile(updateprofile:event.updateprofile);
     emit( UsermanagementState.updatinguserprofilesuccessfully(response: response));
     } catch (e) {
       UsermanagementState.updatinguserprofileFailed(errormessage: e.toString());
     }
    });

    on<UpdatePassword>((event, emit)async {
      emit(UsermanagementState.loadingtoupdateuserpassword());
      try {
        final response = await userManagementRepository.updatepassword(changepassword: event.changepassword);
        emit(UsermanagementState.updatinguserpasswordsuccessfully(response: response));
      } catch (e) {
        emit(UsermanagementState.updatinguserpasswordFailed(errormessage: e.toString()));
      }
    });

    on<UpdatePinCode>((event, emit) async{
      emit(UsermanagementState.loadingtoupdateuserpincode());
      try {
        final response = await userManagementRepository.updatepincode(changepincode: event.changepincode);
        emit(UsermanagementState.updatinguserpincodesuccessfully(response: response));
      } catch (e) {
        emit(UsermanagementState.updatinguserpincodeFailed(errormessage: e.toString()));
      }
    });
  }
}