

import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:lightpay/constants/apiurls.dart';
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/model/changepassword/changepassword.dart';
import 'package:lightpay/data/model/changepincode/changepincode.dart';
import 'package:lightpay/data/model/usermangament/updateprofile/updateprofile.dart';

class UserManagerServerService {


    Future<String?> getAccessToken() async {
    final FlutterSecureStorage storage = const FlutterSecureStorage();
    final tokenString = 'token';
    final token =  await storage.read(key: tokenString);
     return token;
  }

  Future<AppResponse<Map<String,dynamic>>> updateuserprofile({required UpdateProfile updateprofile}) async {
    final token = await getAccessToken();
  final response = await http.post(Uri.parse(Endpoints.updateUserData,),
  headers: {'Content-Type': 'application/json', 'Accept': 'application/json',"Authorization": "Bearer $token" },body:jsonEncode(updateprofile.toJson()),
  );
  final responseData = jsonDecode(response.body) as Map<String, dynamic>;
  return AppResponse<Map<String,dynamic>>.fromJson(responseData,  (json) =>json as Map<String,dynamic>,
  );
}

Future<AppResponse<Map<String,dynamic>>> updatepassword({required ChangePassword changepassword}) async {
  final token = await getAccessToken();
  final response = await http.post(Uri.parse(Endpoints.updateUserPassword,),
  headers: {'Content-Type': 'application/json', 'Accept': 'application/json',"Authorization": "Bearer $token" },body:jsonEncode(changepassword.toJson()),);
  final responseData = jsonDecode(response.body) as Map<String, dynamic>;
  return AppResponse<Map<String,dynamic>>.fromJson(responseData,  (json) =>json as Map<String,dynamic>,
  );
}
Future<AppResponse<Map<String,dynamic>>> updatepincode({required ChangePinCode changepincode}) async {
  final token = await getAccessToken();
  final response = await http.post(Uri.parse(Endpoints.updateUserPinCode,),
  headers: {'Content-Type': 'application/json', 'Accept': 'application/json',"Authorization": "Bearer $token" },body:jsonEncode(changepincode.toJson()),);
  final responseData = jsonDecode(response.body) as Map<String, dynamic>;
  return AppResponse<Map<String,dynamic>>.fromJson(responseData,  (json) =>json as Map<String,dynamic>,
  );
}
}