import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:snippett/Domain/Models/drawerModels/drawerModelsAdmin/base_test_admin_model.dart';
import 'package:snippett/Style/text_style.dart';
import 'package:snippett/Style/box_decoration_style.dart';
import 'package:snippett/Style/colors.dart';
import 'package:snippett/Style/text_style.dart';
import 'package:snippett/Style/button_style.dart';

class baseTestAdmin extends StatelessWidget {
  const baseTestAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => baseTestAdminModel(),
      child: const subBaseTestAdmin(),
    );
  }
}

class subBaseTestAdmin extends StatelessWidget {
  const subBaseTestAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<baseTestAdminModel>();
    return model.listTEst.isNotEmpty
        ? Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 27.h,
                  ),
                  Text(
                    "Тестирование",
                    style: textStyle.Header1,
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  const ListTest(),
                  const Center(child: addTestButton()),
                ],
              ),
            ),
          )
        : Scaffold(
            backgroundColor: Colors.white,
            body: Column(
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
          );
  }
}

class ListTest extends StatelessWidget {
  const ListTest({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<baseTestAdminModel>();
    return Expanded(
      child: ListView.builder(
        itemCount: model.listTEst.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: EdgeInsets.only(left: 20.w, right: 19.w, bottom: 24.h),
          child: testsElement(
            index: index,
          ),
        ),
      ),
    );
  }
}

class testsElement extends StatelessWidget {
  int index;
  testsElement({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: boxStyle.studyItem,
      width: 354.w,
      height: 88.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Test text",
                      style: textStyle.Subtitle,
                    ),
                    Text(
                      "Test subText",
                      style: textStyle.SmallText,
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: const ImageIcon(
                    AssetImage("assets/image/Pencil.png"),
                    color: colorrs.neutral500,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: const ImageIcon(
                    AssetImage("assets/image/trash.png"),
                    color: colorrs.neutral500,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class addButton extends StatelessWidget {
  const addButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<baseTestAdminModel>();
    return Center(
      child: SizedBox(
        width: 123.w,
        height: 36.h,
        child: ElevatedButton(
            style: buttonStyle.secondaryButton,
            onPressed: () => model.goToCreateTest(context),
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

class addTestButton extends StatelessWidget {
  const addTestButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<baseTestAdminModel>();
    return Padding(
      padding: EdgeInsets.only(top: 28.h, bottom: 24.h),
      child: SizedBox(
          width: 186.w,
          height: 46.h,
          child: ElevatedButton(
            style: buttonStyle.Default,
            onPressed: () => model.goToCreateTest(context),
            child: Text(
              "Добавить тест",
              style: textStyle.SmallButtonText,
            ),
          )),
    );
  }
}
