part of 'History_bloc.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial() = _Initial;
  const factory HistoryState.loadinghistory() = Loadinghistory;
  const factory HistoryState.getlistoftransactionsbyuserIdsuccessfull({required AppResponse<Map<String,dynamic>> response}) = GetListOfTransactionsByuserIdSuccessfull;
  const factory HistoryState.getlistoftransactionsbyuserIdFailed({required String errormessage}) = GetlistofTransactionsbyuserIdFailed;

  const factory HistoryState.loadinglistofrecharge() = LoadingListofRecharge;
  const factory HistoryState.getlistofrechargebyuserIdsuccessfull({required AppResponse<Map<String,dynamic>> response}) = GetListOfRechargeByuserIdSuccessfull;
  const factory HistoryState.getlistofrechargebyuserIdFailed({required String errormessage}) = GetlistofRechargebyuserIdFailed;

}