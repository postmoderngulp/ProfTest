import 'package:flutter/material.dart';
import 'package:snippett/Navigation/Navigate.dart';

class SignUpUserModel extends ChangeNotifier {
  String email = "";
  String password = "";
  bool emailValide = false;
  String confirmPassword = "";
  bool passwordVal = true;
  bool confirmPasswordVal = true;
  bool passwordCheck = true;
  bool passwordCheckConfirm = true;

  void goToSignIn(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.signInPath);
  }

  void createUser(String username, String password, int dep_id, int fond_id,
      BuildContext context) async {
    goToSignIn(context);
  }

  void checkValid(String email) {
    emailValide = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
    notifyListeners();
  }

  void changeCheck() {
    passwordCheck = !passwordCheck;
    notifyListeners();
  }

  void changeConfirmCheck() {
    passwordCheckConfirm = !passwordCheckConfirm;
    notifyListeners();
  }
}
