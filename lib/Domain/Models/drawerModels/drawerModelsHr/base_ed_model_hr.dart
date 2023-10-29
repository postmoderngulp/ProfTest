import 'package:flutter/material.dart';
import 'package:snippett/Navigation/Navigate.dart';

class BaseEdModelHr extends ChangeNotifier {
  void goToCreateMaterialHr(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.createMaterialHrPath);
  }
}
