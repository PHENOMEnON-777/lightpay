
import 'package:freezed_annotation/freezed_annotation.dart';

part 'updateprofile.freezed.dart';
part 'updateprofile.g.dart';

@freezed
sealed class UpdateProfile with _$UpdateProfile {
  factory UpdateProfile({
    required String name,
    required String email,
    required String phone,
  }) = _UpdateProfile;
	
  factory UpdateProfile.fromJson(Map<String, dynamic> json) =>
			_$UpdateProfileFromJson(json);
}
