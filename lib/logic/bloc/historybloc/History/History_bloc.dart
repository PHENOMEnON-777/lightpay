import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/provider/repository/historyRepository.dart';

part 'History_bloc.freezed.dart';
part 'History_event.dart';
part 'History_state.dart';

class HistoryBloc extends Bloc<HistoryEvent,HistoryState>{
 final  HistoryRepository historyRepository;
  HistoryBloc({required this.historyRepository}) : super(const HistoryState.initial()){
    on<GetHistory>((event, emit)async {
   emit(HistoryState.loadinghistory());
   try {
     final response = await historyRepository.getlistoftransactionsbyuserId();
     emit(HistoryState.getlistoftransactionsbyuserIdsuccessfull(response: response));
   } catch (e) {
     emit(HistoryState.getlistoftransactionsbyuserIdFailed(errormessage: e.toString()));
   }
    });

on<GetListOfRecharge>((event, emit)async {
  emit(HistoryState.loadinglistofrecharge());
  try {
    final response = await historyRepository.getlistofrechargebyuserId();
    emit(HistoryState.getlistofrechargebyuserIdsuccessfull(response: response));
  } catch (e) {
    emit(HistoryState.getlistofrechargebyuserIdFailed(errormessage: e.toString()));
  }
});

  }
}