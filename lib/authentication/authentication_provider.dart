import 'package:brain_cave/authentication/authentication_repository.dart';
import 'package:flutter/cupertino.dart';

class AuthenticationProvider extends ChangeNotifier {
  // Dependencies
  final AuthenticationRepository _repository = AuthenticationRepository();

  //
  final bool _isUserLoggedIn = false;
  bool get isUserLoggedIn => _isUserLoggedIn;

  Future<void> login(String emailOrMobile, String password) async {
    final result = await _repository.login(emailOrMobile, password);
    return;
  }
}
