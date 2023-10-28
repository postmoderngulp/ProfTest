import 'package:flutter/material.dart';
import 'package:snippett/Navigation/Navigate.dart';

class SignUpPortalModel extends ChangeNotifier {
  String email = "";
  String password = "";
  String fio = "";
  String number = "";
  String inn = "";
  String nameOrganization = "";
  String adressOrganization = "";

  bool emailValide = false;
  bool passwordVal = true;
  bool passwordCheck = true;

  void goToChoosePortal(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.choosePortalPath);
  }

  void goToSignIn(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.signInPath);
  }

  void createAdmin(
      String email,
      String password,
      String fio,
      String number,
      String inn,
      String nameOrganization,
      String adressOrganization,
      BuildContext context) async {
    goToChoosePortal(context);
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
}
