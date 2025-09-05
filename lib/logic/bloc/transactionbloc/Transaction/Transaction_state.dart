part of 'Transaction_bloc.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState.initial() = Initial;
  const factory TransactionState.loadinpaymentinitiation() = LoadingpaymentInitiation;
  const factory TransactionState.paymentinitiationSuccessfull({required AppResponse<Map<String,dynamic>> response}) = PaymentInitiationSuccessfull;
  const factory TransactionState.paymentinitiationFailed({required String errormessga}) = PaymentInitiationFailed;

  const factory TransactionState.loadingtosendmoney()  = LoadingtoSendMoney;
  const factory TransactionState.sendMoneySuccessfully({required AppResponse<Map<String,dynamic>> response}) = SendMoneySuccessfully;
  const factory TransactionState.sendMoneyFailed({required String errromessage}) = SendMoneyFailed;

  const factory TransactionState.momopaymentaccesstokenloading() = LodingAccessTokem;
  const factory TransactionState.momopaymentaccesstokenloadingsuccessfull({required AppResponse<Map<String,dynamic>> response}) = MomoPaymentAccessTokenLoadingSuccessfull;
  const factory TransactionState.momopaymentaccesstokenloadingfailed({required String errormessga,}) = MomoPaymentAccessTokenLoadingFailed;

}