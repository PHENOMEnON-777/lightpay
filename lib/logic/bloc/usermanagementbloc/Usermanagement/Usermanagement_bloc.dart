import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/model/userid/userid.dart';
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
      UsermanagementState.updatinguserprofilesuccessfully(response: response);
     } catch (e) {
       UsermanagementState.updatinguserprofileFailed(errormessage: e.toString());
     }
    });

    on<GetUserById>((event, emit)async {
      emit(UsermanagementState.loadingtogetuserbyid());
      try {
        final response = await userManagementRepository.getuserbyid(userid: event.userid);
        emit(UsermanagementState.getuserbyidsuccessfully(response: response));
      } catch (e) {
        emit(UsermanagementState.getuserbyidFailed(errormessage: e.toString()));
      }
    });
  }
}