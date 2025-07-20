
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/model/usermodel/user.dart';
import 'package:lightpay/data/provider/server/authenticationRepository.dart';

 class AuthenticationRepository {
 final AuthenticationServerservice authenticationServerservice;
 AuthenticationRepository({required this.authenticationServerservice});
Future<AppResponse<Map<String,dynamic>>> registerUser({required User user}) async {
  try {
    final response = await authenticationServerservice.registerUser(user: user);
    return response;
  } catch (e) {
    rethrow;
  }
}

Future<AppResponse<Map<String,dynamic>>> loginUser({required User user}) async {
  final FlutterSecureStorage storage = const FlutterSecureStorage();
    final response = await authenticationServerservice.loginUser(user: user);
    final accesstoken = response.data!['token'] ?? '';
    final pinCode = response.data!['user']['pin_code'] ?? '0000';

    if(accesstoken!=null){
      await storage.write(key: 'token', value: accesstoken);
      await storage.write(key: 'pin_code', value: pinCode);
    }

  try {
    return response;
  } catch (e) {
    rethrow;
  }
}
}