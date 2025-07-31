
import 'package:freezed_annotation/freezed_annotation.dart';

part 'changepincode.freezed.dart';
part 'changepincode.g.dart';

@freezed
sealed class ChangePinCode with _$ChangePinCode {
  factory ChangePinCode({
 required String current_pin_code,
 required String new_pin_code,
 required String new_pin_code_confirmation
}) = _ChangePinCode;
	
  factory ChangePinCode.fromJson(Map<String, dynamic> json) =>
			_$ChangePinCodeFromJson(json);
}
