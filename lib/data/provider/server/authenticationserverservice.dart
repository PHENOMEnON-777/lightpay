import 'dart:convert';
import 'package:lightpay/constants/apiurls.dart';
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/model/usermodel/user.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthenticationServerservice {
 final FlutterSecureStorage _storage = const FlutterSecureStorage();
  final String _tokenKey = 'token';

  Map<String, String> get _commonHeaders => {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };

  Future<String?> getAccessToken() async {
    return await _storage.read(key: _tokenKey);
  }

  Future<Map<String, String>> _getAuthHeaders() async {
    final token = await getAccessToken();
    return {
      ..._commonHeaders,
      if (token != null) "Authorization": "Bearer $token",
    };
  }

  Future<AppResponse<Map<String, dynamic>>> registerUser({required User user}) async {
    final headers = await _getAuthHeaders();
    final response = await http.post(
      Uri.parse(Endpoints.register),
      headers: headers,
      body: jsonEncode(user.toJson()),);
    final responseData = jsonDecode(response.body);
    return AppResponse<Map<String, dynamic>>.fromJson(responseData,(json) => json as Map<String, dynamic>,);
  }

  Future<AppResponse<Map<String, dynamic>>> loginUser({required User user}) async {
        final headers = await _getAuthHeaders();

    final response = await http.post(
      Uri.parse(Endpoints.login),
      headers: headers,
      body: jsonEncode({
        'email': user.email,
        'password': user.password,
      }),
    );
    
    final responseData = jsonDecode(response.body);
    return AppResponse<Map<String, dynamic>>.fromJson(
      responseData,
      (json) => json as Map<String, dynamic>,
    );
  }

  Future<AppResponse<Map<String, dynamic>>> loginwithtoken() async {
        final headers = await _getAuthHeaders();
    final response = await http.get(
      Uri.parse(Endpoints.loginWithToken),
      headers: headers,
    );
    final responseData = jsonDecode(response.body);
    return AppResponse<Map<String, dynamic>>.fromJson(
      responseData,
      (json) => json as Map<String, dynamic>,
    );
  }

  Future<AppResponse<Map<String, dynamic>>> logoutuser() async {
        final headers = await _getAuthHeaders();
    final response = await http.get(
      Uri.parse(Endpoints.logout),
      headers: headers,);
    final responseData = jsonDecode(response.body);
    return AppResponse<Map<String, dynamic>>.fromJson(
      responseData,
      (json) => json as Map<String, dynamic>,
    );
  }
}