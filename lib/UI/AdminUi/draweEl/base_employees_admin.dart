import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:snippett/Domain/Models/drawerModels/drawerModelsAdmin/base_empl_admin_model.dart';
import 'package:snippett/Style/text_style.dart';
import 'package:snippett/Style/box_decoration_style.dart';
import 'package:snippett/Style/colors.dart';
import 'package:snippett/Style/text_style.dart';
import 'package:snippett/Style/button_style.dart';

class baseEmployeesAdmin extends StatelessWidget {
  const baseEmployeesAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => baseEmployeesAdminModel(),
      child: const subBaseEmployeesAdmin(),
    );
  }
}

class subBaseEmployeesAdmin extends StatelessWidget {
  const subBaseEmployeesAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    int val = 1;

    return val == 0
        ? Padding(
            padding: EdgeInsets.only(left: 37.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 37.h,
                ),
                Text(
                  "Отправьте данные своему сотруднику",
                  style: textStyle.Subtitle,
                ),
                SizedBox(
                  height: 26.h,
                ),
                Text(
                  "Логин",
                  style: textStyle.Subtitle,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("fff"),
                      Center(
                        child: ImageIcon(
                          AssetImage("assets/image/Duplicate.png"),
                          color: colorrs.neutral300,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                Text(
                  "Пароль",
                  style: textStyle.Subtitle,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("qwerty"),
                      Center(
                        child: ImageIcon(
                          AssetImage("assets/image/Duplicate.png"),
                          color: colorrs.neutral300,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 57.h,
                ),
                const Center(child: sendButton()),
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
          );
  }
}

class addButton extends StatelessWidget {
  const addButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<baseEmployeesAdminModel>();
    return Center(
      child: SizedBox(
        width: 123.w,
        height: 36.h,
        child: ElevatedButton(
            style: buttonStyle.secondaryButton,
            onPressed: () => model.goTocreateEmpl(context),
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

class sendButton extends StatelessWidget {
  const sendButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 124.w,
      height: 36.h,
      child: ElevatedButton(
          style: buttonStyle.Default,
          onPressed: () {},
          child: Row(
            children: [
              const Icon(
                Icons.check,
                color: colorrs.neutral0,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                "Отправил",
                style: textStyle.SmallButtonText,
              ),
            ],
          )),
    );
  }
}
