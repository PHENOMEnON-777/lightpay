// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recharge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Recharge _$RechargeFromJson(Map<String, dynamic> json) => _Recharge(
  amount: (json['amount'] as num).toDouble(),
  phone: json['phone'] as String,
  provider: json['provider'] as String,
);

Map<String, dynamic> _$RechargeToJson(_Recharge instance) => <String, dynamic>{
  'amount': instance.amount,
  'phone': instance.phone,
  'provider': instance.provider,
};
