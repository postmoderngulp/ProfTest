import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snippett/Style/colors.dart';

abstract class textStyle {
  static TextStyle Header1 = TextStyle(
      color: colorrs.neutral800, fontFamily: "SystemFontBold", fontSize: 32.sp);
  static TextStyle Header1blue = TextStyle(
      color: colorrs.primary600, fontFamily: "SystemFontBold", fontSize: 32.sp);
  static TextStyle Header2 = TextStyle(
      color: colorrs.neutral800, fontFamily: "SystemFontBold", fontSize: 18.sp);
  static TextStyle Header2blue = TextStyle(
      color: colorrs.primary600, fontFamily: "SystemFontBold", fontSize: 18.sp);
  static TextStyle Header3 = TextStyle(
      color: colorrs.neutral800,
      fontFamily: "SystemFontSemiBold",
      fontSize: 16.sp);
  static TextStyle Subtitle = TextStyle(
      color: colorrs.neutral600,
      fontFamily: "SystemFontRegular",
      fontSize: 16.sp);
  static TextStyle SubTitleBlue = TextStyle(
      color: colorrs.primary600,
      fontFamily: "SystemFontRegular",
      fontSize: 16.sp);
  static TextStyle SubTitledanger = TextStyle(
      color: colorrs.danger500,
      fontFamily: "SystemFontRegular",
      fontSize: 16.sp);
  static TextStyle Body = TextStyle(
      color: colorrs.neutral800,
      fontFamily: "SystemFontRegular",
      fontSize: 14.sp);
  static TextStyle fieldText = TextStyle(
      color: colorrs.neutral500,
      fontFamily: "SystemFontRegular",
      fontSize: 14.sp);
  static TextStyle BodyHightlight = TextStyle(
      color: colorrs.neutral800,
      fontFamily: "SystemFontSemiBold",
      fontSize: 14.sp);
  static TextStyle Buttontext = TextStyle(
      color: colorrs.neutral0, fontFamily: "SystemFontBold", fontSize: 14.sp);
  static TextStyle ButtontextBlue = TextStyle(
      color: colorrs.primary600, fontFamily: "SystemFontBold", fontSize: 14.sp);
  static TextStyle SmallText = TextStyle(
      color: colorrs.neutral800,
      fontFamily: "SystemFontRegular",
      fontSize: 12.sp);
  static TextStyle SmallTextBlue = TextStyle(
      color: colorrs.primary600,
      fontFamily: "SystemFontRegular",
      fontSize: 12.sp);
  static TextStyle SmallTextDanger = TextStyle(
      color: colorrs.danger500,
      fontFamily: "SystemFontRegular",
      fontSize: 12.sp);
  static TextStyle SmallButtonText = TextStyle(
      color: colorrs.neutral0, fontFamily: "SystemFontBold", fontSize: 12.sp);
  static TextStyle TableLable = TextStyle(
    color: colorrs.neutral0,
    fontFamily: "SystemFontBold",
    fontSize: 11.sp,
  );
}
