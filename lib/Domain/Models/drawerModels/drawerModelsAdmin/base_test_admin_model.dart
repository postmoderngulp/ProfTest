import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:snippett/Domain/Api/api.dart';
import 'package:snippett/Navigation/Navigate.dart';

class baseTestAdminModel extends ChangeNotifier {
  List<dynamic> listTEst = [];

  void goToCreateTest(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.createTestAdminPath);
  }

  baseTestAdminModel() {
    getAllTest();
  }

  void getAllTest() async {
    final api = Api();
    final storage = new FlutterSecureStorage();
    final token = await storage.read(key: "tokenKey");
    await api.getAllTest(
      1,
      token!,
    );
  }
}
