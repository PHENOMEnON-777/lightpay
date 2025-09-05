part of 'Transaction_bloc.dart';

@freezed
sealed class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.transactionInitiation({required Transaction transaction}) = InitiatTransaction;
  const factory TransactionEvent.reset() = Reset;
  const factory TransactionEvent.sendMoney({required SendMoney sendmoney}) = SendMoneyToAnotherAccount;
  const factory TransactionEvent.momoaccesstoken() = MomoAccessToken;
}