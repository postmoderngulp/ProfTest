import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:snippett/Domain/Api/api.dart';

class AddEdMaterialAdminModel extends ChangeNotifier {
  String name = "";
  String urlFile = "";

  void createmodule(String name, String urlFile) async {
    final api = Api();
    final storage = new FlutterSecureStorage();
    final token = await storage.read(key: "tokenKey");
    final portalId = await storage.read(key: "portalId");
    await api.createModule(name, portalId!, urlFile, token!);
  }
}
