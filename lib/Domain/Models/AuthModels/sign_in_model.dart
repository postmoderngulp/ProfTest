import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:snippett/Domain/Api/api.dart';
import 'package:snippett/Navigation/Navigate.dart';

class SignInModel extends ChangeNotifier {
  String email = "";
  String password = "";
  bool passwordVal = true;
  bool passwordCheck = true;
  bool emailVailde = false;

  void goToMainScreenAdmin(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.MainScreenAdminPath);
  }

  void goToMainScreenUser(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.MainScreenUserPath);
  }

  Future<String> signIn(
      String email, String password, BuildContext context) async {
    final api = Api();
    final entity = await api.logIn(email, password);
    final storage = new FlutterSecureStorage();
    await storage.write(key: "tokenKey", value: entity.tokenPair.accessToken);
    return entity.role;
  }

  void goToSignUpPortal(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.signUpPortalPath);
  }

  void checkValid(String email) {
    emailVailde = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
    notifyListeners();
  }

  void changeCheck() {
    passwordCheck = !passwordCheck;
    notifyListeners();
  }
}
