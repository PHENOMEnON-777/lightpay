// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updateprofile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateProfile _$UpdateProfileFromJson(Map<String, dynamic> json) =>
    _UpdateProfile(
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$UpdateProfileToJson(_UpdateProfile instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
    };
