import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lightpay/constants/apiurls.dart';
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/model/recharge/recharge.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class RechargeServerService {
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
  Future<AppResponse<Map<String, dynamic>>> recharge({required Recharge recharge}) async {
    try {
      final headers = await _getAuthHeaders();
      final response = await http.post(
        Uri.parse(Endpoints.initRecharge),
        headers: headers,
        body: jsonEncode(recharge.toJson()),
      );
      
      final responseData = jsonDecode(response.body);
      return AppResponse<Map<String, dynamic>>.fromJson(
        responseData as Map<String, dynamic>,
        (json) => json as Map<String, dynamic>,
      );
    } catch (e) {
      // Handle errors appropriately
      rethrow;
    }
  }
}