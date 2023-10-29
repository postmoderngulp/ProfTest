import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:snippett/Domain/Models/drawerModels/drawerModelsHr/base_ed_model_hr.dart';
import 'package:snippett/Style/text_style.dart';
import 'package:snippett/Style/colors.dart';
import 'package:snippett/Style/box_decoration_style.dart';
import 'package:snippett/Style/button_style.dart';

class baseEdHr extends StatelessWidget {
  const baseEdHr({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BaseEdModelHr(),
      child: const subBaseEdhr(),
    );
  }
}

class subBaseEdhr extends StatelessWidget {
  const subBaseEdhr({super.key});

  @override
  Widget build(BuildContext context) {
    int val = 0;
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          body: val == 0
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 19.h,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          filtrButton(),
                          addMoreButton(),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      const ListStudyMaterials(),
                    ],
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: SizedBox(
                          width: 158.w,
                          height: 88.h,
                          child: Image.asset("assets/image/doc.png")),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      "Здесь ничего нет...",
                      style: textStyle.SmallText,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const addButton(),
                  ],
                ),
        ),
      ),
    );
  }
}

class addButton extends StatelessWidget {
  const addButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<BaseEdModelHr>();
    return Center(
      child: SizedBox(
        width: 123.w,
        height: 36.h,
        child: ElevatedButton(
            style: buttonStyle.secondaryButton,
            onPressed: () => model.goToCreateMaterialHr(context),
            child: Row(
              children: [
                const ImageIcon(
                  AssetImage("assets/image/plus.png"),
                  color: colorrs.primary600,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  "Добавить",
                  style: textStyle.SmallTextBlue,
                ),
              ],
            )),
      ),
    );
  }
}

class ListStudyMaterials extends StatelessWidget {
  const ListStudyMaterials({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: const StudyMaterialsItem(),
        ),
      ),
    );
  }
}

class StudyMaterialsItem extends StatelessWidget {
  const StudyMaterialsItem({super.key});

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
            Padding(
              padding: EdgeInsets.only(left: 108.w, top: 24.h),
              child: Row(
                children: [
                  const deleteItemButton(),
                  SizedBox(
                    width: 15.w,
                  ),
                  const redactItemButton()
                ],
              ),
            )
          ]),
    );
  }
}

class addMoreButton extends StatelessWidget {
  const addMoreButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<BaseEdModelHr>();
    return SizedBox(
      width: 123.w,
      height: 36.h,
      child: ElevatedButton(
          style: buttonStyle.Default,
          onPressed: () => model.goToCreateMaterialHr(context),
          child: Row(
            children: [
              const ImageIcon(
                AssetImage("assets/image/plus.png"),
                color: colorrs.neutral0,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                "Добавить",
                style: textStyle.SmallButtonText,
              ),
            ],
          )),
    );
  }
}

class filtrButton extends StatelessWidget {
  const filtrButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 95.w,
      height: 36.h,
      child: ElevatedButton(
          style: buttonStyle.filtrButton,
          onPressed: () {},
          child: Row(
            children: [
              ImageIcon(
                const AssetImage("assets/image/filtr.png"),
                color: colorrs.neutral800,
                size: 12.w,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                "Фильтр",
                style: textStyle.SmallText,
              ),
            ],
          )),
    );
  }
}

class deleteItemButton extends StatelessWidget {
  const deleteItemButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 92.w,
        height: 36.h,
        child: ElevatedButton(
          style: buttonStyle.dangerButton,
          onPressed: () {},
          child: Text(
            "Удалить",
            style: textStyle.SmallTextDanger,
          ),
        ));
  }
}

class redactItemButton extends StatelessWidget {
  const redactItemButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 125.w,
        height: 36.h,
        child: ElevatedButton(
            style: buttonStyle.secondaryButton,
            onPressed: () {},
            child: Row(
              children: [
                const ImageIcon(
                  AssetImage("assets/image/Pencil.png"),
                  color: colorrs.primary600,
                ),
                Text(
                  "Изменить",
                  style: textStyle.SmallTextBlue,
                ),
              ],
            )));
  }
}
