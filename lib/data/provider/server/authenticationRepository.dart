
import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

// import 'package:dio/dio.dart';
import 'package:lightpay/constants/apiurls.dart';
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/model/usermodel/user.dart';

class AuthenticationServerservice {
 
 Future<String?> getAccessToken() async {
    final FlutterSecureStorage storage = const FlutterSecureStorage();
    final tokenString = 'token';
    final token =  await storage.read(key: tokenString);
     return token;
  }
  
  Future<AppResponse<Map<String,dynamic>>> registerUser({required User user}) async {
  final response = await http.post(Uri.parse(Endpoints.register,), headers: {'Content-Type': 'application/json', 'Accept': 'application/json', },
    body:jsonEncode(user.toJson()),
  );

  final responseData = jsonDecode(response.body) as Map<String, dynamic>;
  return AppResponse<Map<String,dynamic>>.fromJson(responseData,  (json) =>json as Map<String,dynamic>,
  );
}

Future<AppResponse<Map<String,dynamic>>> loginUser({required User user}) async {
  final response = await http.post(Uri.parse(Endpoints.login,), headers: {'Content-Type': 'application/json', 'Accept': 'application/json', },
    body:jsonEncode(user.copyWith(email:user.email,password: user.password).toJson()),
  );
  final responseData = jsonDecode(response.body) as Map<String, dynamic>;
  return AppResponse<Map<String,dynamic>>.fromJson(responseData,  (json) =>json as Map<String,dynamic>,
  );
}

Future<AppResponse<Map<String,dynamic>>> loginwithtoken() async {
  final token = await getAccessToken();
  final response = await http.get(Uri.parse(Endpoints.loginWithToken,),
  headers: {'Content-Type': 'application/json', 'Accept': 'application/json',"Authorization": "Bearer $token" },);
  final responseData = jsonDecode(response.body) as Map<String, dynamic>;
  return AppResponse<Map<String,dynamic>>.fromJson(responseData,  (json) =>json as Map<String,dynamic>,
  );
}

Future<AppResponse<Map<String,dynamic>>> logoutuser() async {
  final token = await getAccessToken();
  final response = await http.get(Uri.parse(Endpoints.logout,),
  headers: {'Content-Type': 'application/json', 'Accept': 'application/json',"Authorization": "Bearer $token" },);
  final responseData = jsonDecode(response.body) as Map<String, dynamic>;
  return AppResponse<Map<String,dynamic>>.fromJson(responseData,  (json) =>json as Map<String,dynamic>,
  );
}
}
