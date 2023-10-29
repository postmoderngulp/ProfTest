import 'package:flutter/material.dart';
import 'package:snippett/UI/AdminUi/addEmplAdmin.dart';
import 'package:snippett/UI/AdminUi/add_edMaterial.dart';
import 'package:snippett/UI/AdminUi/create_test_admin.dart';

import 'package:snippett/UI/AdminUi/main_screen_admin.dart';
import 'package:snippett/UI/AuthUi/sign_in.dart';
import 'package:snippett/UI/AuthUi/sign_up_portal.dart';
import 'package:snippett/UI/CommonUi/create_appeals_common.dart';
import 'package:snippett/UI/CommonUi/main_screen_common.dart';
import 'package:snippett/UI/CommonUi/pass_test_common.dart';
import 'package:snippett/UI/CommonUi/studyMaterialModules_common.dart';
import 'package:snippett/UI/HrUi/create_material_hr.dart';
import 'package:snippett/UI/HrUi/main_screen_Hr.dart';

abstract class NavigatePaths {
  static const signInPath = "/";
  static const signUpUserPath = "/signUpUser";
  static const signUpPortalPath = "/signUpPortal";

  static const MainScreenUserPath = "//mainScreenUser";
  static const MainScreenAdminPath = "//mainScreenAdmin";
  static const MainScreenHrPath = "//MainScreenHr";
  static const addEdMaterialAdminPath = "//mainScreenAdmin/addEdMaterialAdmin";
  static const createMaterialHrPath = "//MainScreenHr/createMaterialHr";
  static const createTestAdminPath = "//mainScreenAdmin/createTest";
  static const createEmplAdminPath = "//mainScreenAdmin/createEmplAdmin";
  static const studyMaterialModuleUserPath =
      "//mainScreenUser/studyMaterialModuleUser";
  static const passTestCommonPath =
      "//mainScreenUser/studyMaterialModuleUser/passTestCommon";
  static const createAppealsCommonPath =
      "//mainScreenUser/studyMaterialModuleUser/createAppealsCommon";
}

class NavigateService {
  String initialRoute = NavigatePaths.signInPath;
  final routes = <String, Widget Function(BuildContext)>{
    NavigatePaths.signInPath: (context) => const SignIn(),
    NavigatePaths.signUpPortalPath: (context) => const SignUpPortal(),
    NavigatePaths.MainScreenUserPath: (context) => const MainScreenCommon(),
    NavigatePaths.MainScreenAdminPath: (context) => const MainScreenAdmin(),
    NavigatePaths.addEdMaterialAdminPath: (context) => const AddEdMaterial(),
    NavigatePaths.createTestAdminPath: (context) => const CreateTestAdmin(),
    NavigatePaths.MainScreenHrPath: (context) => const MainScreenHR(),
    NavigatePaths.createMaterialHrPath: (context) => const CreateMaterialHr(),
    NavigatePaths.createEmplAdminPath: (context) => const AddEmployeeAdmin(),
    NavigatePaths.studyMaterialModuleUserPath: (context) =>
        const StudyMaterialModule(),
    NavigatePaths.passTestCommonPath: (context) => const passTestCommon(),
    NavigatePaths.createAppealsCommonPath: (context) => const createAppeals(),
  };
}
