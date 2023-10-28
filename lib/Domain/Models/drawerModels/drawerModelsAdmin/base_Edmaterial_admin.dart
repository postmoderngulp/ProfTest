import 'package:flutter/material.dart';
import 'package:snippett/Navigation/Navigate.dart';

class BaseEdMaterialAdminModel extends ChangeNotifier {
  void goToAddMAterial(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.addEdMaterialPath);
  }
}
