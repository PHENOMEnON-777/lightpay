part of 'Usermanagement_bloc.dart';

@freezed
sealed class UsermanagementEvent with _$UsermanagementEvent {
  
  const factory UsermanagementEvent.updateprofile({required UpdateProfile updateprofile}) = UpdateUserProfile;

  const factory UsermanagementEvent.getuserbuId({required UserId userid}) = GetUserById;
}