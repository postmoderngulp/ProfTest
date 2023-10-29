import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:snippett/Domain/Models/drawerModels/drawermodelsUser/education_model_common.dart';
import 'package:snippett/Style/box_decoration_style.dart';
import 'package:snippett/Style/text_style.dart';
import 'package:snippett/Style/button_style.dart';
import 'package:snippett/Style/colors.dart';

class myEducationUser extends StatelessWidget {
  const myEducationUser({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EducationModelCommon(),
      child: const subMyEducationUser(),
    );
  }
}

class subMyEducationUser extends StatelessWidget {
  const subMyEducationUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const SafeArea(
        child: Scaffold(
            body: Column(
          children: [ListStudyMaterialsCommon()],
        )),
      ),
    );
  }
}

class ListStudyMaterialsCommon extends StatelessWidget {
  const ListStudyMaterialsCommon({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 2,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: EdgeInsets.only(bottom: 25.h, left: 20, right: 20, top: 30),
          child: const elementStudyMaterialsCommon(),
        ),
      ),
    );
  }
}

class elementStudyMaterialsCommon extends StatelessWidget {
  const elementStudyMaterialsCommon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 192.h,
      decoration: boxStyle.studyItem,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.w,
                  ),
                  child: Container(
                    width: 86.w,
                    height: 81.h,
                    decoration: boxStyle.subStudyItem,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: Text(
                        "Lorem ipsum dolor",
                        style: textStyle.Subtitle,
                      ),
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.w),
                        child: Text(
                          "Samoe luchshee opisanie",
                          style: textStyle.SmallText,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 25.h),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                moreButton(),
              ],
            )
          ]),
    );
  }
}

class moreButton extends StatelessWidget {
  const moreButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<EducationModelCommon>();
    return Padding(
      padding: EdgeInsets.only(right: 20.w),
      child: SizedBox(
          width: 109.w,
          height: 36.h,
          child: ElevatedButton(
              style: buttonStyle.filtrButton,
              onPressed: () => model.goToTesting(context),
              child: Row(
                children: [
                  const ImageIcon(
                    AssetImage("assets/image/more.png"),
                    color: colorrs.neutral800,
                  ),
                  Text(
                    "Больше",
                    style: textStyle.SmallText,
                  ),
                ],
              ))),
    );
  }
}
