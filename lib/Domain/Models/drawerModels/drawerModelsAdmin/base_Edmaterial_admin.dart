import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:snippett/Domain/Api/api.dart';
import 'package:snippett/Domain/entity/module.dart';
import 'package:snippett/Navigation/Navigate.dart';

class BaseEdMaterialAdminModel extends ChangeNotifier {
  List<Module> listTEst = [];
  void goToAddMAterial(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.addEdMaterialAdminPath);
  }

  BaseEdMaterialAdminModel() {
    getAllModule();
  }

  void getAllModule() async {
    final api = Api();
    final storage = new FlutterSecureStorage();
    final token = await storage.read(key: "tokenKey");
    final list = await api.getAllModule(
      token!,
    );
    listTEst = list.listModel;
    notifyListeners();
  }
}
