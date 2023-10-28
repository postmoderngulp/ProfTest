import 'package:flutter/material.dart';
import 'package:snippett/Navigation/Navigate.dart';

class ChooseRoleModel {
  void goToUserSignUp(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.signUpUserPath);
  }

  void goToAdminSignUp(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.signUpPortalPath);
  }

  void goToSignIn(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.signInPath);
  }
}
