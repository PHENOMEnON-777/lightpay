
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/provider/server/historyserverservice.dart';

class HistoryRepository {
  final HistoryServerService historyServerService;
  const HistoryRepository({required this.historyServerService});

Future<AppResponse<Map<String,dynamic>>> getlistoftransactionsbyuserId() async {
  try {
    final response = await historyServerService.getlistoftransactionsbyuserId() ;
    return response;
  } catch (e) {
    rethrow;
  }
}

Future<AppResponse<Map<String,dynamic>>> getlistofrechargebyuserId() async {
  try {
    final response = await historyServerService.getlistofrechargebyuserId() ;
    return response;
  } catch (e) {
    rethrow;
  }
}

}