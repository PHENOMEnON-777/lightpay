import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lightpay/constants/apiurls.dart';
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/model/transaction/sendmoney/sendmoney.dart';
import 'package:lightpay/data/model/transaction/transaction.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TransactionServerServices {
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
  Future<AppResponse<Map<String, dynamic>>> initiatTransaction({required Transaction transaction}) async {
    try {
      final headers = await _getAuthHeaders();
      final response = await http.post(
        Uri.parse(Endpoints.initTransaction),
        headers: headers,
        body: jsonEncode(transaction.toJson()), // Removed unnecessary copyWith
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

  Future<AppResponse<Map<String, dynamic>>> getmomoaccesstoken() async {
    try {
      final headers = await _getAuthHeaders();
      final response = await http.post(
        Uri.parse(Endpoints.momoSetupToken),
        headers: headers,
        body: jsonEncode({}), // Empty JSON object instead of empty map
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

  Future<AppResponse<Map<String, dynamic>>> sendMoney({required SendMoney sendmoney}) async {
    try {
      final headers = await _getAuthHeaders();
      final response = await http.post(
        Uri.parse(Endpoints.sendMoneyToAnotherAccount),
        headers: headers,
        body: jsonEncode(sendmoney.toJson()),
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