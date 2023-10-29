import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:snippett/Domain/Api/api.dart';
import 'package:snippett/Domain/entity/listportal.dart';
import 'package:snippett/Domain/entity/portal.dart';
import 'package:snippett/Domain/entity/portal_info.dart';

class portalEnterModel extends ChangeNotifier {
  List<dynamic> listPortal = [];

  portalEnterModel() {
    getMyPortal();
  }
  Future<void> getMyPortal() async {
    final api = Api();
    final storage = new FlutterSecureStorage();
    final token = await storage.read(key: "tokenKey");
    final list = await api.getAllPortal(token!);
    listPortal = list.listPortal;
    notifyListeners();
  }

  void SavePortal(PortalInfo portal) async {
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(PortalInfoAdapter());
    }
    final box = await Hive.openBox<PortalInfo>("portlAdmin");
    await box.add(portal);
  }
}
