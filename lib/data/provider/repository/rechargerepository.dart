

import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/model/recharge/recharge.dart';
import 'package:lightpay/data/provider/server/rechargeserverservice.dart';

class RechargeRepository {
 final RechargeServerService rechargeServerService;
  const RechargeRepository({required this.rechargeServerService});

   Future<AppResponse<Map<String,dynamic>>> recharge({required Recharge recharge}) async {
  try {
    final response = await rechargeServerService.recharge(recharge: recharge);
    return response;
  } catch (e) {
    rethrow;
  }
}
}