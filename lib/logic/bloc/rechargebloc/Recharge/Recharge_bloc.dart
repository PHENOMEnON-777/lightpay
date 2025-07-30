import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/model/recharge/recharge.dart';
import 'package:lightpay/data/provider/repository/rechargerepository.dart';

part 'Recharge_state.dart';
part 'Recharge_event.dart';
part 'Recharge_bloc.freezed.dart';

class RechargeBloc extends Bloc<RechargeEvent,RechargeState>{
  final RechargeRepository rechargeRepository;
  RechargeBloc({required this.rechargeRepository }) : super(const RechargeState.initial()){
    on<RechargeanAccount>((event, emit) async {
      emit(RechargeState.loadingrecharge());
     try {
       final reponse = await rechargeRepository.recharge(recharge: event.recharge);
       emit(RechargeState.rechargesuccessfully(recharge: reponse));
     } catch (e) {
       emit(RechargeState.rechargeFailed(errormessage: e.toString()));
     }
    });
  }
}