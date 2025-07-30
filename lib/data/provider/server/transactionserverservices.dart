


import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:lightpay/constants/apiurls.dart';
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/model/transaction/sendmoney/sendmoney.dart';
import 'package:lightpay/data/model/transaction/transaction.dart';

class TransactionServerServices {

   Future<String?> getAccessToken() async {
    final FlutterSecureStorage storage = const FlutterSecureStorage();
    final tokenString = 'token';
    final token =  await storage.read(key: tokenString);
     return token;
  }

  Future<AppResponse<Map<String,dynamic>>> initiatTransaction({required Transaction transaction}) async {
    final token = await getAccessToken();
  final response = await http.post(Uri.parse(Endpoints.initTransaction,),
  headers: {'Content-Type': 'application/json', 'Accept': 'application/json',"Authorization": "Bearer $token" }, body:jsonEncode(transaction.copyWith(amount:transaction.amount).toJson()),
  );
  final responseData = jsonDecode(response.body) as Map<String, dynamic>;
  return AppResponse<Map<String,dynamic>>.fromJson(responseData,  (json) =>json as Map<String,dynamic>,
  );
}


Future<AppResponse<Map<String,dynamic>>> sendMoney({required SendMoney sendmoney}) async {
    final token = await getAccessToken();
  final response = await http.post(Uri.parse(Endpoints.sendMoneyToAnotherAccount,),
   headers: {'Content-Type': 'application/json', 'Accept': 'application/json',"Authorization": "Bearer $token" },
    body:jsonEncode(sendmoney.toJson()),
  );
  final responseData = jsonDecode(response.body) as Map<String, dynamic>;
  return AppResponse<Map<String,dynamic>>.fromJson(responseData,  (json) =>json as Map<String,dynamic>,
  );
}
}