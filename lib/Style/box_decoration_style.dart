import 'package:flutter/material.dart';
import 'package:snippett/Style/colors.dart';

abstract class boxStyle {
  static BoxDecoration secondaryDecoration = const BoxDecoration(
    color: colorrs.primary100,
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
  static BoxDecoration secondaryDecorationTile = const BoxDecoration(
    color: colorrs.primary100,
    borderRadius: BorderRadius.all(Radius.circular(5)),
  );
  static BoxDecoration clickSecondaryDecoration = BoxDecoration(
      color: colorrs.neutral0,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      border: Border.all(color: colorrs.primary700));
  static BoxDecoration logoutdecoration = const BoxDecoration(
    color: colorrs.danger100,
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
  static BoxDecoration studyItem = BoxDecoration(
      color: colorrs.neutral0,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      border: Border.all(color: colorrs.neutral150));
  static BoxDecoration questionItem = BoxDecoration(
      color: colorrs.neutral0, border: Border.all(color: colorrs.neutral150));
  static BoxDecoration subStudyItem = const BoxDecoration(
    color: colorrs.neutral300,
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
}
