// File: lib/utils/dio_client/dio_client.dart

import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lightpay/constants/apiurls.dart';

// --- Constants and Interceptors are co-located for clarity ---
class DioErrorMessage {
  static const badCertificate = "Bad certificate. Please check your connection.";
  static const connectionTimeout = "Connection timed out. Please try again.";
  static const sendTimeout = "Request timed out. Please try again.";
  static const receiveTimeout = "Response timed out. Please try again.";
  static const badResponse = "An error occurred. Status code: ";
  static const cancel = "Request was cancelled.";
  static const connectionError = "Connection error. Please check your internet connection.";
  static const defaultError = "An unknown error occurred.";
  static const requestTimeout = "Request timeout. Please try again.";
  static const tooManyRequests = "Too many requests. Please try again later.";
  static const unprocessableEntity = "Unprocessable entity. Please check your request data.";
  static const forbiddenAccess = "Forbidden access. You do not have permission to access this resource.";
  static const unauthorizedAccess = "Unauthorized access. Please log in again.";
  static const resourceNotFound = "Resource not found. Please check the URL.";
  static const conflictError = "Conflict error. Please check your request.";
  static const internalServerError = "Internal server error. Please try again later.";
  static const badRequestException = "Bad request exception. Please check your request.";
}

class AppInterceptors extends Interceptor {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();
  static AppInterceptors? _singleton;
  
  AppInterceptors._internal();

  factory AppInterceptors() {
    return _singleton ??= AppInterceptors._internal();
  }

  @override
  void onRequest(
    RequestOptions options, RequestInterceptorHandler handler) async {
    // Add Authorization header if it doesn't exist and a token is available
    if (!options.headers.containsKey(HttpHeaders.authorizationHeader)) {
      final token = await _secureStorage.read(key: 'token');

      if (token != null && token.isNotEmpty) {
        options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
      }
    }
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    return handler.next(response);
  }
  
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // 1. Get the custom error message
    final customErrorMessage = _getErrorMessage(err.type, err.response?.statusCode);
    final newError = DioException(
      requestOptions: err.requestOptions,
      error: customErrorMessage, 
    );
        return handler.next(newError);
  }

  String _getErrorMessage(DioExceptionType type, int? statusCode) {
    String errorMessage = DioErrorMessage.defaultError;
    if (type == DioExceptionType.connectionTimeout) {
      errorMessage = DioErrorMessage.connectionTimeout;
    } else if (type == DioExceptionType.sendTimeout) {
      errorMessage = DioErrorMessage.sendTimeout;
    } else if (type == DioExceptionType.receiveTimeout) {
      errorMessage = DioErrorMessage.receiveTimeout;
    } else if (type == DioExceptionType.badCertificate) {
      errorMessage = DioErrorMessage.badCertificate;
    } else if (type == DioExceptionType.cancel) {
      errorMessage = DioErrorMessage.cancel;
    } else if (type == DioExceptionType.connectionError) {
      errorMessage = DioErrorMessage.connectionError;
    } else if (type == DioExceptionType.badResponse) {
      if (statusCode != null) {
        if (statusCode == 400) {
          errorMessage = DioErrorMessage.badRequestException;
        } else if (statusCode == 401) {
          errorMessage = DioErrorMessage.unauthorizedAccess;
        } else if (statusCode == 403) {
          errorMessage = DioErrorMessage.forbiddenAccess;
        } else if (statusCode == 404) {
          errorMessage = DioErrorMessage.resourceNotFound;
        } else if (statusCode == 408) {
          errorMessage = DioErrorMessage.requestTimeout;
        } else if (statusCode == 409) {
          errorMessage = DioErrorMessage.conflictError;
        } else if (statusCode == 422) {
          errorMessage = DioErrorMessage.unprocessableEntity;
        } else if (statusCode == 429) {
          errorMessage = DioErrorMessage.tooManyRequests;
        } else if (statusCode == 500) {
          errorMessage = DioErrorMessage.internalServerError;
        }
      }
    }
    return errorMessage;
  }

  
}

// --- The DioClient is responsible for setting up the Dio instance and providing public methods ---
class DioClient {
  static DioClient? _singleton;
  static late Dio _dio;

  DioClient._() {
    _dio = createDioClient();
  }

  factory DioClient() {
    return _singleton ??= DioClient._();
  }

  // Get the Dio instance to make requests
  Dio get instance => _dio;

  Dio createDioClient() {
    final dio = Dio(
      BaseOptions(
        baseUrl: Endpoints.baseUrl,
        connectTimeout: const Duration(milliseconds: 15000),
        receiveTimeout: const Duration(milliseconds: 15000),
        sendTimeout: const Duration(milliseconds: 15000),
        headers: {
          Headers.acceptHeader: "application/json",
          Headers.contentTypeHeader: "application/json",
        },
      ),
    );

    dio.interceptors.addAll([
      AppInterceptors(), 
    ]);

    return dio;
  }
}