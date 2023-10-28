import 'package:flutter/material.dart';
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

  void signIn(String email, String password, BuildContext context) async {
    goToMainScreenAdmin(context);
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
