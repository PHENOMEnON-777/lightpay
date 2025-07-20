part of 'Transaction_bloc.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState.initial() = Initial;
  const factory TransactionState.loadinpaymentinitiation() = LoadingpaymentInitiation;
  const factory TransactionState.paymentinitiationSuccessfull({required AppResponse<Map<String,dynamic>> response}) = PaymentInitiationSuccessfull;
  const factory TransactionState.paymentinitiationFailed({required String errormessga}) = PaymentInitiationFailed;

}