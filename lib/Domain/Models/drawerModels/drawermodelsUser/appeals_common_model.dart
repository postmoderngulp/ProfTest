import 'package:flutter/material.dart';

import '../../../../Navigation/Navigate.dart';

class myAppealsUserModel extends ChangeNotifier {
  void goToCreateAppeal(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.createAppealsCommonPath);
  }
}
