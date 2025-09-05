import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lightpay/constants/apiurls.dart';

class CustomHttpClient {
  final _storage = const FlutterSecureStorage(); // Fixed: underscore prefix
  final String _tokenKey = 'token'; // Fixed: underscore prefix
  final String _baseUrl = Endpoints.baseUrl; // Fixed: underscore prefix

  Future<Map<String, String>> _getHeaders({bool requiresAuth = false}) async { // Fixed: underscore prefix
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    
    if (requiresAuth) {
      final token = await _storage.read(key: _tokenKey);
      if (token != null) {
        headers['Authorization'] = 'Bearer $token';
      }
    }
    return headers;
  }

  Future<http.Response> get(String endpoint, {bool requiresAuth = false}) async {
    final url = Uri.parse('$_baseUrl$endpoint');
    final headers = await _getHeaders(requiresAuth: requiresAuth);
    return await http.get(url, headers: headers);
  }

  Future<http.Response> post(String endpoint, {required dynamic body, bool requiresAuth = false}) async {
    final url = Uri.parse('$_baseUrl$endpoint');
    final headers = await _getHeaders(requiresAuth: requiresAuth);
    return await http.post(url, headers: headers, body: jsonEncode(body));
  }

  Future<http.Response> patch(String endpoint, {required dynamic body, bool requiresAuth = false}) async {
    final url = Uri.parse('$_baseUrl$endpoint');
    final headers = await _getHeaders(requiresAuth: requiresAuth);
    return await http.patch(url, headers: headers, body: jsonEncode(body));
  }

  Future<http.Response> delete(String endpoint, {bool requiresAuth = false}) async {
    final url = Uri.parse('$_baseUrl$endpoint');
    final headers = await _getHeaders(requiresAuth: requiresAuth);
    return await http.delete(url, headers: headers);
  }
}