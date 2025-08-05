

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:lightpay/constants/apiurls.dart';
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/model/changepassword/changepassword.dart';
import 'package:lightpay/data/model/changepincode/changepincode.dart';
import 'package:lightpay/data/model/usermangament/updateprofile/updateprofile.dart';
import 'package:lightpay/utils/customhttpclient.dart';

class UserManagerServerService {

  final Dio _dioClient;
  UserManagerServerService({Dio? dioClient,}) :_dioClient = dioClient ?? DioClient().instance;

  Future<AppResponse<Map<String,dynamic>>> updateuserprofile({required UpdateProfile updateprofile}) async {
  final response = await _dioClient.post(Endpoints.updateUserData,data:jsonEncode(updateprofile.toJson()),);
  return AppResponse<Map<String,dynamic>>.fromJson(response.data,  (json) =>json as Map<String,dynamic>,);
}

Future<AppResponse<Map<String,dynamic>>> updatepassword({required ChangePassword changepassword}) async {
  final response = await _dioClient.post(Endpoints.updateUserPassword,data:jsonEncode(changepassword.toJson()),);
  return AppResponse<Map<String,dynamic>>.fromJson(response.data,  (json) =>json as Map<String,dynamic>,);
}
Future<AppResponse<Map<String,dynamic>>> updatepincode({required ChangePinCode changepincode}) async {
  final response = await _dioClient.post(Endpoints.updateUserPinCode,data:jsonEncode(changepincode.toJson()),);
  return AppResponse<Map<String,dynamic>>.fromJson(response.data,  (json) =>json as Map<String,dynamic>,);
}
}