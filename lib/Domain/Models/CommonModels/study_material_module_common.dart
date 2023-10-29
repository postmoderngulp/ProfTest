import 'package:flutter/material.dart';
import 'package:snippett/Navigation/Navigate.dart';

class StudyMaterialCommonModule extends ChangeNotifier {
  void goToPassTest(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.passTestCommonPath);
  }
}
