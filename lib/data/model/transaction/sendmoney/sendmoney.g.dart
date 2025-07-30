// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sendmoney.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SendMoney _$SendMoneyFromJson(Map<String, dynamic> json) => _SendMoney(
  phone: json['phone'] as String,
  amount: (json['amount'] as num).toDouble(),
);

Map<String, dynamic> _$SendMoneyToJson(_SendMoney instance) =>
    <String, dynamic>{'phone': instance.phone, 'amount': instance.amount};
