
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:dio/dio.dart';
import 'package:lightpay/constants/apiurls.dart';
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/model/usermodel/user.dart';

class AuthenticationServerservice {
  final Dio dioClient =Dio();

 
  Future<AppResponse<Map<String,dynamic>>> registerUser({required User user}) async {
    print('printing it');
    print(user.toJson());
  final response = await http.post(Uri.parse(Endpoints.register,), headers: {'Content-Type': 'application/json', 'Accept': 'application/json', },
    body:jsonEncode(user.toJson()),
  );
  print('*************');
print(response.body);
  final responseData = jsonDecode(response.body) as Map<String, dynamic>;
  return AppResponse<Map<String,dynamic>>.fromJson(responseData,  (json) =>json as Map<String,dynamic>,
  );
}

}
