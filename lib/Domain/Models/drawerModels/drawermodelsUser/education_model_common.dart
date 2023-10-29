import 'package:flutter/material.dart';
import 'package:snippett/Navigation/Navigate.dart';

class EducationModelCommon extends ChangeNotifier {
  void goToTesting(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.studyMaterialModuleUserPath);
  }
}
