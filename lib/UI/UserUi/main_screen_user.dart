import 'package:flutter/material.dart';
import 'package:snippett/Style/box_decoration_style.dart';
import 'package:snippett/Style/colors.dart';
import 'package:snippett/Style/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snippett/UI/UserUi/drawerEl/about_company.dart';
import 'package:snippett/UI/UserUi/drawerEl/my_appeals.dart';
import 'package:snippett/UI/UserUi/drawerEl/my_applicatons.dart';
import 'package:snippett/UI/UserUi/drawerEl/my_education.dart';
import 'package:snippett/UI/UserUi/drawerEl/my_results.dart';
import 'package:snippett/UI/UserUi/drawerEl/my_tests.dart';

class MainScreenUser extends StatefulWidget {
  const MainScreenUser({super.key});

  @override
  State<MainScreenUser> createState() => _MainScreenUserState();
}

class _MainScreenUserState extends State<MainScreenUser> {
  final List<Widget> _tabs = [
    const aboutCompanyUser(),
    const myEducationUser(),
    const myTestUser(),
    const myResultUser(),
    const myAppealsUser(),
    const myApplicationUser(),
  ];
  int val = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: colorrs.primary600,
          elevation: 0,
        ),
        body: _tabs[val],
        drawer: Drawer(
          child: SizedBox(
            child: ListView(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 32.h, horizontal: 14.w),
                  child: SizedBox(
                    width: 253.w,
                    height: 90.h,
                    child: DrawerHeader(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 36.w,
                          height: 36.h,
                          child: const Image(
                              image:
                                  AssetImage("assets/image/teamPicture.png")),
                        ),
                        SizedBox(
                          width: 9.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name",
                              style: textStyle.SmallText,
                            ),
                            Text(
                              "Портал",
                              style: textStyle.SmallText,
                            ),
                          ],
                        )
                      ],
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    val = 0;
                  }),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 20.w, right: 23.w, bottom: 20.h),
                    child: Container(
                      width: 227.w,
                      height: 36.h,
                      decoration:
                          val == 0 ? boxStyle.secondaryDecorationTile : null,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 14.w, vertical: 9.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ImageIcon(
                                const AssetImage("assets/image/info.png"),
                                color: val == 0
                                    ? colorrs.primary600
                                    : colorrs.neutral300,
                                size: 18.w,
                              ),
                              SizedBox(
                                width: 14.w,
                              ),
                              Text(
                                "Наша компания",
                                style: val == 0
                                    ? textStyle.SmallTextBlue
                                    : textStyle.SmallText,
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    val = 1;
                  }),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 20.w, right: 23.w, bottom: 20.h),
                    child: Container(
                      width: 227.w,
                      height: 36.h,
                      decoration:
                          val == 1 ? boxStyle.secondaryDecorationTile : null,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 14.w, vertical: 9.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ImageIcon(
                                const AssetImage("assets/image/education.png"),
                                color: val == 1
                                    ? colorrs.primary600
                                    : colorrs.neutral300,
                                size: 18.w,
                              ),
                              SizedBox(
                                width: 14.w,
                              ),
                              Text(
                                "Мои обучение",
                                style: val == 1
                                    ? textStyle.SmallTextBlue
                                    : textStyle.SmallText,
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    val = 2;
                  }),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 20.w, right: 23.w, bottom: 20.h),
                    child: Container(
                      width: 227.w,
                      height: 36.h,
                      decoration:
                          val == 2 ? boxStyle.secondaryDecorationTile : null,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 14.w, vertical: 9.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ImageIcon(
                                const AssetImage("assets/image/test.png"),
                                color: val == 2
                                    ? colorrs.primary600
                                    : colorrs.neutral300,
                                size: 18.w,
                              ),
                              SizedBox(
                                width: 14.w,
                              ),
                              Text(
                                "Мои тесты",
                                style: val == 2
                                    ? textStyle.SmallTextBlue
                                    : textStyle.SmallText,
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    val = 3;
                  }),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 20.w, right: 23.w, bottom: 20.h),
                    child: Container(
                      width: 227.w,
                      height: 36.h,
                      decoration:
                          val == 3 ? boxStyle.secondaryDecorationTile : null,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 14.w, vertical: 9.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ImageIcon(
                                const AssetImage("assets/image/results.png"),
                                color: val == 3
                                    ? colorrs.primary600
                                    : colorrs.neutral300,
                                size: 18.w,
                              ),
                              SizedBox(
                                width: 14.w,
                              ),
                              Text(
                                "Мои результаты",
                                style: val == 3
                                    ? textStyle.SmallTextBlue
                                    : textStyle.SmallText,
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    val = 4;
                  }),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 20.w, right: 23.w, bottom: 20.h),
                    child: Container(
                      width: 227.w,
                      height: 36.h,
                      decoration:
                          val == 4 ? boxStyle.secondaryDecorationTile : null,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 14.w, vertical: 9.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ImageIcon(
                                const AssetImage("assets/image/support.png"),
                                color: val == 4
                                    ? colorrs.primary600
                                    : colorrs.neutral300,
                                size: 18.w,
                              ),
                              SizedBox(
                                width: 14.w,
                              ),
                              Text(
                                "Мои обращения",
                                style: val == 4
                                    ? textStyle.SmallTextBlue
                                    : textStyle.SmallText,
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    val = 5;
                  }),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 20.w, right: 23.w, bottom: 20.h),
                    child: Container(
                      width: 227.w,
                      height: 36.h,
                      decoration:
                          val == 5 ? boxStyle.secondaryDecorationTile : null,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 14.w, vertical: 9.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ImageIcon(
                                const AssetImage(
                                    "assets/image/applications.png"),
                                color: val == 5
                                    ? colorrs.primary600
                                    : colorrs.neutral300,
                              ),
                              SizedBox(
                                width: 14.w,
                              ),
                              Text(
                                "Мои заявки",
                                style: val == 5
                                    ? textStyle.SmallTextBlue
                                    : textStyle.SmallText,
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 29.w, right: 138.w, top: 50.h),
                  child: Container(
                    width: 104.w,
                    height: 36.h,
                    decoration: boxStyle.logoutdecoration,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                      ),
                      child: Row(
                        children: [
                          const Image(
                              image: AssetImage("assets/image/logOut.png")),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "Выйти",
                            style: textStyle.SmallTextDanger,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
      )),
    );
  }
}
