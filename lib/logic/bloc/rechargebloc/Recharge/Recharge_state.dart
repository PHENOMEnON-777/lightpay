part of 'Recharge_bloc.dart';

@freezed
class RechargeState with _$RechargeState {
  const factory RechargeState.initial() = _Initial;
  const factory RechargeState.loadingrecharge() = LoadingRecharge;
  const factory RechargeState.rechargesuccessfully({required AppResponse<Map<String,dynamic>> recharge}) = RechargedSuccessfully;
  const factory RechargeState.rechargeFailed({required errormessage}) = RechargeFailed;
}