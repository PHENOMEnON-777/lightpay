part of 'Usermanagement_bloc.dart';

@freezed
class UsermanagementState with _$UsermanagementState {
  const factory UsermanagementState.initial() = _Initial;

  const factory UsermanagementState.loadingtogetuserbyid() = LoadingToGetUserById;
  const factory UsermanagementState.getuserbyidsuccessfully({required AppResponse<Map<String,dynamic>> response}) = GetUserByIdSuccessfully;
  const factory UsermanagementState.getuserbyidFailed({required String errormessage}) = GetUserByIdFailed;



  const factory UsermanagementState.loadingtoupdateuserprofile() = LoadingToUpdateUserProfile;
  const factory UsermanagementState.updatinguserprofilesuccessfully({required AppResponse<Map<String,dynamic>> response}) = UpdatingUserProfileSuccessfully;
  const factory UsermanagementState.updatinguserprofileFailed({required String errormessage}) = UpdatingUserProfileFailed;

}