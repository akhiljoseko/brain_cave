import 'package:brain_cave/authentication/authentication_api.dart';

class AuthenticationRepository {
  // Dependencies
  final _api = AuthenticationApi();

  Future<bool> login(String emailOrMobile, String password) async {
    final json = await _api.login(emailOrMobile, password);
    // TODO: Resume here
    return true;
  }
}
