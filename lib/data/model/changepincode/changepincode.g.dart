// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'changepincode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangePinCode _$ChangePinCodeFromJson(Map<String, dynamic> json) =>
    _ChangePinCode(
      current_pin_code: json['current_pin_code'] as String,
      new_pin_code: json['new_pin_code'] as String,
      new_pin_code_confirmation: json['new_pin_code_confirmation'] as String,
    );

Map<String, dynamic> _$ChangePinCodeToJson(_ChangePinCode instance) =>
    <String, dynamic>{
      'current_pin_code': instance.current_pin_code,
      'new_pin_code': instance.new_pin_code,
      'new_pin_code_confirmation': instance.new_pin_code_confirmation,
    };
