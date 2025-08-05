
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:lightpay/constants/apiurls.dart';
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/model/usermodel/user.dart';
import 'package:lightpay/utils/customhttpclient.dart';

class AuthenticationServerservice {
  final Dio _dioClient;

  AuthenticationServerservice({Dio? dioClient,}) : _dioClient = dioClient ?? DioClient().instance;
 
  Future<AppResponse<Map<String,dynamic>>> registerUser({required User user}) async {
  final response = await _dioClient.post(Endpoints.register, data:jsonEncode(user.toJson()), );
  return AppResponse<Map<String,dynamic>>.fromJson(response.data,  (json) =>json as Map<String,dynamic>,
  );
}

Future<AppResponse<Map<String,dynamic>>> loginUser({required User user}) async {
  final response = await _dioClient.post(Endpoints.login,data:jsonEncode(user.copyWith(email:user.email,password: user.password).toJson()),);
  return AppResponse<Map<String,dynamic>>.fromJson(response.data,  (json) =>json as Map<String,dynamic>,
  );
}

Future<AppResponse<Map<String,dynamic>>> loginwithtoken() async {
  final response = await _dioClient.get(Endpoints.loginWithToken,);
  return AppResponse<Map<String,dynamic>>.fromJson(response.data,  (json) =>json as Map<String,dynamic>,
  );
}

Future<AppResponse<Map<String,dynamic>>> logoutuser() async {
  final response = await _dioClient.get(Endpoints.logout,);
  return AppResponse<Map<String,dynamic>>.fromJson(response.data,  (json) =>json as Map<String,dynamic>,
  );
}
}
