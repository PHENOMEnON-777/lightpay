// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'changepassword.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangePassword _$ChangePasswordFromJson(Map<String, dynamic> json) =>
    _ChangePassword(
      current_password: json['current_password'] as String,
      new_password: json['new_password'] as String,
      new_password_confirmation: json['new_password_confirmation'] as String,
    );

Map<String, dynamic> _$ChangePasswordToJson(_ChangePassword instance) =>
    <String, dynamic>{
      'current_password': instance.current_password,
      'new_password': instance.new_password,
      'new_password_confirmation': instance.new_password_confirmation,
    };
