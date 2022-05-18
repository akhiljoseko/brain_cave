import 'package:brain_cave/core/base_api.dart';
import 'package:brain_cave/utils/validation_utils.dart';

class AuthenticationApi extends BaseApi {
  Future<dynamic> login(String emailOrMobile, String password) async {
    const apiEndPoint = "/signin";
    String? email;
    String? mobile;
    if (ValidationUtils.isEmail(emailOrMobile)) {
      email = emailOrMobile;
    } else {
      mobile = mobile;
    }
    final body = {
      "mobile_number": mobile,
      "email": email,
      "password": password
    };
    body.removeWhere((key, value) => value == null);
    return await super.post(apiEndPoint, body);
  }
}
