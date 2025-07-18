
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/model/usermodel/user.dart';
import 'package:lightpay/data/provider/server/authenticationRepository.dart';

 class AuthenticationRepository {
 final AuthenticationServerservice authenticationServerservice;
 AuthenticationRepository({required this.authenticationServerservice});

Future<AppResponse<Map<String,dynamic>>> registerUser({required User user}) async {
  try {
    final response = await authenticationServerservice.registerUser(user: user);
    print('object');
    print(response.data);
    return response;
  } catch (e) {
    rethrow;
  }
}
}