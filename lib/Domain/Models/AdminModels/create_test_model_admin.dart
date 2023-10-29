import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:snippett/Domain/Api/api.dart';

class CreateTestAdminModel extends ChangeNotifier {
  String name = "";
  String moduleName = "Сварщик";
  String portalId = "";
  String description = "";
  int score = 0;
  String correct = "";
  String a = "";
  String b = "";
  String c = "";
  String d = "";
  bool firstCheckValide = false;
  bool secondCheckValide = false;
  bool thirdCheckValide = false;
  bool fourCheckValide = false;

  void Check(int index) {
    if (index == 0) {
      firstCheckValide = true;
      secondCheckValide = false;
      thirdCheckValide = false;
      fourCheckValide = false;
      correct = a;
    } else if (index == 1) {
      firstCheckValide = false;
      secondCheckValide = true;
      thirdCheckValide = false;
      fourCheckValide = false;
      correct = b;
    } else if (index == 2) {
      firstCheckValide = false;
      secondCheckValide = false;
      thirdCheckValide = true;
      fourCheckValide = false;
      correct = c;
    } else if (index == 3) {
      firstCheckValide = false;
      secondCheckValide = false;
      thirdCheckValide = false;
      fourCheckValide = true;
      correct = d;
    }
    notifyListeners();
  }

  void createTest(
    String name,
    String moduleName,
    String description,
    int score,
    String correct,
    String a,
    String b,
    String c,
    String d,
  ) async {
    final api = Api();
    final storage = new FlutterSecureStorage();
    final token = await storage.read(key: "tokenKey");
    await api.createTest(
        name, moduleName, description, score, correct, a, b, c, d, token!);
  }
}
