part of 'Recharge_bloc.dart';

@freezed
sealed class RechargeEvent with _$RechargeEvent {
  const factory RechargeEvent.recharge({required Recharge recharge}) = RechargeanAccount;
}