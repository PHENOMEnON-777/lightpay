import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lightpay/constants/apiurls.dart';
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/model/changepassword/changepassword.dart';
import 'package:lightpay/data/model/changepincode/changepincode.dart';
import 'package:lightpay/data/model/usermangament/updateprofile/updateprofile.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserManagerServerService {
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
  Future<AppResponse<Map<String, dynamic>>> updateuserprofile({required UpdateProfile updateprofile}) async {
    try {
      final headers = await _getAuthHeaders();
      final response = await http.post(
        Uri.parse(Endpoints.updateUserData),
        headers: headers,
        body: jsonEncode(updateprofile.toJson()),
      );
      
      final responseData = jsonDecode(response.body);
      return AppResponse<Map<String, dynamic>>.fromJson(
        responseData as Map<String, dynamic>,
        (json) => json as Map<String, dynamic>,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<AppResponse<Map<String, dynamic>>> updatepassword({required ChangePassword changepassword}) async {
    try {
      final headers = await _getAuthHeaders();
      final response = await http.post(
        Uri.parse(Endpoints.updateUserPassword),
        headers: headers,
        body: jsonEncode(changepassword.toJson()),
      );
      
      final responseData = jsonDecode(response.body);
      return AppResponse<Map<String, dynamic>>.fromJson(
        responseData as Map<String, dynamic>,
        (json) => json as Map<String, dynamic>,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<AppResponse<Map<String, dynamic>>> updatepincode({required ChangePinCode changepincode}) async {
    try {
      final headers = await _getAuthHeaders();
      final response = await http.post(
        Uri.parse(Endpoints.updateUserPinCode),
        headers: headers,
        body: jsonEncode(changepincode.toJson()),
      );
      
      final responseData = jsonDecode(response.body);
      return AppResponse<Map<String, dynamic>>.fromJson(
        responseData as Map<String, dynamic>,
        (json) => json as Map<String, dynamic>,
      );
    } catch (e) {
      rethrow;
    }
  }
}