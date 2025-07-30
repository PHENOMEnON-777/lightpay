
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sendmoney.freezed.dart';
part 'sendmoney.g.dart';

@freezed
sealed class SendMoney with _$SendMoney {
  factory SendMoney({
    required String phone,
    required double amount,
  }) = _SendMoney;
	
  factory SendMoney.fromJson(Map<String, dynamic> json) =>
			_$SendMoneyFromJson(json);
}
