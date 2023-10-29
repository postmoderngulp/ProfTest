import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:snippett/Domain/Api/api.dart';
import 'package:snippett/Navigation/Navigate.dart';

class SignUpPortalModel extends ChangeNotifier {
  String email = "";
  String password = "";
  String number = "";
  String inn = "";
  String nameOrganization = "";
  String adressOrganization = "";

  bool emailValide = false;
  bool passwordVal = true;
  bool passwordCheck = true;

  void goToSignIn(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.signInPath);
  }

  void createPortal(String email, String password, String number, String inn,
      String name, String address, BuildContext context) async {
    final api = Api();
    final portal =
        await api.createPortal(email, password, name, number, inn, address);
    final storage = new FlutterSecureStorage();
    await storage.write(key: "portalId", value: portal.id_);
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
}
