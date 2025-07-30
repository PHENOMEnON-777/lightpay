

import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/model/userid/userid.dart';
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

Future<AppResponse<Map<String,dynamic>>> getuserbyid({required UserId userid}) async {
  try {
    final response = await userManagerServerService.getuserbyid(userid: userid);
    return response;
  } catch (e) {
    rethrow;
  }
}

}