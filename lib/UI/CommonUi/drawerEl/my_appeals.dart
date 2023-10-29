import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:snippett/Domain/Models/drawerModels/drawermodelsUser/appeals_common_model.dart';
import 'package:snippett/Style/text_style.dart';
import 'package:snippett/Style/box_decoration_style.dart';
import 'package:snippett/Style/colors.dart';
import 'package:snippett/Style/text_style.dart';
import 'package:snippett/Style/button_style.dart';

class myAppealsUser extends StatelessWidget {
  const myAppealsUser({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => myAppealsUserModel(),
      child: const subAppealsCommon(),
    );
  }
}

class subAppealsCommon extends StatelessWidget {
  const subAppealsCommon({super.key});

  @override
  Widget build(BuildContext context) {
    int val = 0;
    return Column(
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
        const CreateButton(),
      ],
    );
  }
}

class CreateButton extends StatelessWidget {
  const CreateButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<myAppealsUserModel>();
    return Center(
      child: SizedBox(
        width: 123.w,
        height: 36.h,
        child: ElevatedButton(
            style: buttonStyle.secondaryButton,
            onPressed: () => model.goToCreateAppeal(context),
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
                  "Создать",
                  style: textStyle.SmallTextBlue,
                ),
              ],
            )),
      ),
    );
  }
}
