
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recharge.freezed.dart';
part 'recharge.g.dart';

@freezed
 sealed class Recharge with _$Recharge {
  factory Recharge({
    required double amount,
    required String phone,
    required String provider,
  }) = _Recharge;
	
  factory Recharge.fromJson(Map<String, dynamic> json) =>
			_$RechargeFromJson(json);
}
