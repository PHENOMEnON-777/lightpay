

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:lightpay/constants/apiurls.dart';
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/model/recharge/recharge.dart';
import 'package:lightpay/utils/customhttpclient.dart';

class RechargeServerService {

  final Dio _dioClient;

  RechargeServerService({Dio? dioClient,}):_dioClient = dioClient ?? DioClient().instance;


Future<AppResponse<Map<String,dynamic>>>recharge({required Recharge recharge}) async {
  final response = await _dioClient.post(Endpoints.initRecharge,data:jsonEncode(recharge.toJson()),);
  return AppResponse<Map<String,dynamic>>.fromJson(response.data,  (json) =>json as Map<String,dynamic>, );
}

}