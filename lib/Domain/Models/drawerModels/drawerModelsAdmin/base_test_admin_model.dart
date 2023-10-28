import 'package:flutter/material.dart';
import 'package:snippett/Navigation/Navigate.dart';

class baseTestAdminModel extends ChangeNotifier {
  void goToCreateTest(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.createTestAdminPath);
  }
}
