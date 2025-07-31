
import 'package:freezed_annotation/freezed_annotation.dart';

part 'changepassword.freezed.dart';
part 'changepassword.g.dart';

@freezed
sealed class ChangePassword with _$ChangePassword {
  factory ChangePassword({
  required String current_password,
 required String new_password,
 required String new_password_confirmation
}) = _ChangePassword;
	
  factory ChangePassword.fromJson(Map<String, dynamic> json) =>
			_$ChangePasswordFromJson(json);
}
