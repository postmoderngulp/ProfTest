import 'package:flutter/material.dart';
import 'package:snippett/Navigation/Navigate.dart';

class baseEmployeesAdminModel extends ChangeNotifier {
  void goTocreateEmpl(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.createEmplAdminPath);
  }
}
