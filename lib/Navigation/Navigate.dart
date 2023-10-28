import 'package:flutter/material.dart';
import 'package:snippett/UI/AdminUi/add_edMaterial.dart';
import 'package:snippett/UI/AdminUi/create_test_admin.dart';

import 'package:snippett/UI/AdminUi/main_screen_admin.dart';
import 'package:snippett/UI/AuthUi/choose_portal.dart';
import 'package:snippett/UI/AuthUi/sign_in.dart';
import 'package:snippett/UI/AuthUi/sign_up_portal.dart';
import 'package:snippett/UI/AuthUi/sign_up_user.dart';
import 'package:snippett/UI/UserUi/main_screen_user.dart';

abstract class NavigatePaths {
  static const signInPath = "/";
  static const choosePortalPath = "/signUpPortal/choosePortal";
  static const signUpUserPath = "/signUpUser";
  static const signUpPortalPath = "/signUpPortal";

  static const MainScreenUserPath = "//mainScreenUser";
  static const MainScreenAdminPath = "//mainScreenAdmin";
  static const addEdMaterialPath = "//mainScreenAdmin/addEdMaterial";
  static const createTestAdminPath = "//mainScreenAdmin/createTest";
}

class NavigateService {
  String initialRoute = NavigatePaths.signInPath;
  final routes = <String, Widget Function(BuildContext)>{
    NavigatePaths.signInPath: (context) => const SignIn(),
    NavigatePaths.choosePortalPath: (context) => const ChoosePortal(),
    NavigatePaths.signUpUserPath: (context) => const SignUpUser(),
    NavigatePaths.signUpPortalPath: (context) => const SignUpPortal(),
    NavigatePaths.MainScreenUserPath: (context) => const MainScreenUser(),
    NavigatePaths.MainScreenAdminPath: (context) => const MainScreenAdmin(),
    NavigatePaths.addEdMaterialPath: (context) => const AddEdMaterial(),
    NavigatePaths.createTestAdminPath: (context) => const CreateTestAdmin(),
  };
}
