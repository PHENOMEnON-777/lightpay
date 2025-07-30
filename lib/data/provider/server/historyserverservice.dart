

import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:lightpay/constants/apiurls.dart';
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';

class HistoryServerService {



Future<String?> getAccessToken() async {
    final FlutterSecureStorage storage = const FlutterSecureStorage();
    final tokenString = 'token';
    final token =  await storage.read(key: tokenString);
     return token;
  }



Future<AppResponse<Map<String,dynamic>>>getlistoftransactionsbyuserId() async {
    final token = await getAccessToken();
  final response = await http.get(Uri.parse(Endpoints.getListTransactions,),
  headers: {'Content-Type': 'application/json', 'Accept': 'application/json',"Authorization": "Bearer $token" });
  // print(response.body);
  final responseData = jsonDecode(response.body) as Map<String, dynamic>;
  return AppResponse<Map<String,dynamic>>.fromJson(responseData,  (json) =>json as Map<String,dynamic>,
  );
}

Future<AppResponse<Map<String,dynamic>>>getlistofrechargebyuserId() async {
    final token = await getAccessToken();
  final response = await http.get(Uri.parse(Endpoints.getListRechargesByUserId,),
  headers: {'Content-Type': 'application/json', 'Accept': 'application/json',"Authorization": "Bearer $token" });
  final responseData = jsonDecode(response.body) as Map<String, dynamic>;
  return AppResponse<Map<String,dynamic>>.fromJson(responseData,  (json) =>json as Map<String,dynamic>,
  );
}


}