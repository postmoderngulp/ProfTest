import 'package:flutter/material.dart';
import 'package:snippett/Style/colors.dart';

abstract class buttonStyle {
  static ButtonStyle Default = const ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(
        colorrs.primary600,
      ),
      elevation: MaterialStatePropertyAll(0),
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)))));
  static ButtonStyle secondaryButton = const ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(
        colorrs.primary100,
      ),
      elevation: MaterialStatePropertyAll(0),
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)))));
  static ButtonStyle clickSecondaryButton = const ButtonStyle(
      side: MaterialStatePropertyAll(
          BorderSide(width: 1, color: colorrs.primary700)),
      backgroundColor: MaterialStatePropertyAll(
        colorrs.neutral0,
      ),
      elevation: MaterialStatePropertyAll(0),
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)))));
  static ButtonStyle cancelButton = const ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(
        colorrs.neutral100,
      ),
      elevation: MaterialStatePropertyAll(0),
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)))));
  static ButtonStyle filtrButton = const ButtonStyle(
      side: MaterialStatePropertyAll(
          BorderSide(width: 1, color: colorrs.neutral800)),
      backgroundColor: MaterialStatePropertyAll(
        colorrs.neutral0,
      ),
      elevation: MaterialStatePropertyAll(0),
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)))));
  static ButtonStyle dangerButton = const ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(
        colorrs.danger100,
      ),
      elevation: MaterialStatePropertyAll(0),
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)))));
}
