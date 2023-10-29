import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:snippett/Domain/Models/CommonModels/create_appeals_common_model.dart';
import 'package:snippett/Style/text_style.dart';
import 'package:snippett/Style/button_style.dart';

class createAppeals extends StatelessWidget {
  const createAppeals({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => createAppealsModelCommon(),
      child: const subCreateAppeals(),
    );
  }
}

class subCreateAppeals extends StatelessWidget {
  const subCreateAppeals({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.only(left: 33.w, right: 22.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60.h,
                ),
                Text(
                  "Связаться с HR",
                  style: textStyle.Header2,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "Тема обращения",
                  style: textStyle.Header2,
                ),
                SizedBox(
                  height: 30.h,
                ),
                const ThemeAppealTextField(),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "Вопрос",
                  style: textStyle.Header2,
                ),
                const questionTextField(),
                SizedBox(
                  height: 28.h,
                ),
                const finishButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ThemeAppealTextField extends StatelessWidget {
  const ThemeAppealTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<createAppealsModelCommon>();
    return Center(
      child: SizedBox(
        width: 338.w,
        height: 40.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) {},
          placeholder: "Заполните поле",
          placeholderStyle: textStyle.fieldText,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}

class questionTextField extends StatelessWidget {
  const questionTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<createAppealsModelCommon>();
    return SizedBox(
      width: 338.w,
      height: 80.h,
      child: CupertinoTextField(
        textAlign: TextAlign.start,
        padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
        autofocus: true,
        keyboardType: TextInputType.emailAddress,
        onEditingComplete: () => FocusScope.of(context).nextFocus(),
        onChanged: (value) {},
        placeholder: "Введите текст",
        placeholderStyle: textStyle.fieldText,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}

class finishButton extends StatelessWidget {
  const finishButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 199.w,
        height: 46.h,
        child: ElevatedButton(
          style: buttonStyle.Default,
          onPressed: () {},
          child: Text(
            "Отправить",
            style: textStyle.SmallButtonText,
          ),
        ));
  }
}
