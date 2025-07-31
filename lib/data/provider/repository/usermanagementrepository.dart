

import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/model/changepassword/changepassword.dart';
import 'package:lightpay/data/model/changepincode/changepincode.dart';
import 'package:lightpay/data/model/usermangament/updateprofile/updateprofile.dart';
import 'package:lightpay/data/provider/server/usermanagerserverservice.dart';

class UserManagementRepository {
  final UserManagerServerService userManagerServerService;
  const UserManagementRepository({required this.userManagerServerService});

  Future<AppResponse<Map<String,dynamic>>> updateuserprofile({required UpdateProfile updateprofile}) async {
  try {
    final response = await userManagerServerService.updateuserprofile(updateprofile: updateprofile);
    return response;
  } catch (e) {
    rethrow;
  }
}

Future<AppResponse<Map<String,dynamic>>> updatepassword({required ChangePassword changepassword}) async {
  try {
    final response = await userManagerServerService.updatepassword(changepassword: changepassword);
    return response;
  } catch (e) {
    rethrow;
  }
}

Future<AppResponse<Map<String,dynamic>>> updatepincode({required ChangePinCode changepincode}) async {
  try {
    final response = await userManagerServerService.updatepincode(changepincode: changepincode);
    return response;
  } catch (e) {
    rethrow;
  }
}

}