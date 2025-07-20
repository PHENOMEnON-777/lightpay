import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/model/transaction/transaction.dart';
import 'package:lightpay/data/provider/repository/transactionrepository.dart';

part 'Transaction_state.dart';
part 'Transaction_event.dart';
part 'Transaction_bloc.freezed.dart';

class TransactionBloc extends Bloc<TransactionEvent,TransactionState>{
 final TransactionRepository transactionrepository;
  TransactionBloc({required this.transactionrepository}) : super(const TransactionState.initial()){
    on<InitiatTransaction>((event, emit) async {
      emit(TransactionState.loadinpaymentinitiation());
      try {
        final response = await transactionrepository.initiatTransaction(transaction:event.transaction );
        emit(TransactionState.paymentinitiationSuccessfull(response: response));
      } catch (e) {
        emit(TransactionState.paymentinitiationFailed(errormessga: e.toString()));
      }
    });
  }
}