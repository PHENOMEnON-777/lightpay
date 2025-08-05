
import 'package:dio/dio.dart';
import 'package:lightpay/constants/apiurls.dart';
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/utils/customhttpclient.dart';

class HistoryServerService {
  
  final Dio _dioClient;

  HistoryServerService({Dio? dioClient,}): _dioClient = dioClient ?? DioClient().instance;
Future<AppResponse<Map<String,dynamic>>>getlistoftransactionsbyuserId() async {
  final response = await _dioClient.get(Endpoints.getListTransactions,);
  return AppResponse<Map<String,dynamic>>.fromJson(response.data,  (json) =>json as Map<String,dynamic>,);
}

Future<AppResponse<Map<String,dynamic>>>getlistofrechargebyuserId() async {
  final response = await _dioClient.get(Endpoints.getListRechargesByUserId,);
  return AppResponse<Map<String,dynamic>>.fromJson(response.data,  (json) =>json as Map<String,dynamic>,);
}
}