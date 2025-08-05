


import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:lightpay/constants/apiurls.dart';
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/model/transaction/sendmoney/sendmoney.dart';
import 'package:lightpay/data/model/transaction/transaction.dart';
import 'package:lightpay/utils/customhttpclient.dart';

class TransactionServerServices {

  final Dio _dioClient;

TransactionServerServices({Dio? dioClient,}):_dioClient = dioClient ?? DioClient().instance;

  Future<AppResponse<Map<String,dynamic>>> initiatTransaction({required Transaction transaction}) async {
  final response = await _dioClient.post(Endpoints.initTransaction,data:jsonEncode(transaction.copyWith(amount:transaction.amount).toJson()),);
  return AppResponse<Map<String,dynamic>>.fromJson(response.data,  (json) =>json as Map<String,dynamic>,);
}


Future<AppResponse<Map<String,dynamic>>> sendMoney({required SendMoney sendmoney}) async {
  final response = await _dioClient.post(Endpoints.sendMoneyToAnotherAccount,data:jsonEncode(sendmoney.toJson()),);
  return AppResponse<Map<String,dynamic>>.fromJson(response.data,(json) =>json as Map<String,dynamic>,);
}
}