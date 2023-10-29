import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:snippett/Domain/Api/api.dart';
import 'package:snippett/Domain/entity/portal.dart';
import 'package:snippett/Domain/entity/portal_info.dart';
import 'package:snippett/Navigation/Navigate.dart';

class aboutCompanyAdminModel extends ChangeNotifier {
  String purpose = "";
  String Mission = "";
  String Address = "dsfdsf";
  String inn = "";
  String number = "";
  String email = "";
  String color = "color";
  String description = "description";
  void goTo(BuildContext context) {}

  aboutCompanyAdminModel() {
    getPortal();
  }

  void putPortal(String name, String number, String address, String color,
      String mission, String description) async {
    final api = Api();
    final storage = new FlutterSecureStorage();
    final portal_id = await storage.read(
      key: "portalId",
    );
    final token = await storage.read(key: "tokenKey");
    await api.putPortal(name, number, inn, address, color, purpose, mission,
        description, token!, portal_id!);
  }

  void getPortal() async {
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(PortalInfoAdapter());
    }
    final box = await Hive.openBox<PortalInfo>("portlAdmin");
    final portaal = box.get("portlAdmin");
    Address = portaal!.address!;
    inn = portaal!.inn!;
    number = portaal!.phone_number!;
    email = portaal!.name;
    notifyListeners();
  }
}
