import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:snippett/Domain/Models/AuthModels/choose_enter_model.dart';
import 'package:snippett/Style/button_style.dart';
import 'package:snippett/Style/text_style.dart';

class ChoosePortal extends StatelessWidget {
  const ChoosePortal({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (BuildContext context) => ChoosePortalModel(),
        child: const ChoseEnter());
  }
}

class ChoseEnter extends StatelessWidget {
  const ChoseEnter({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 88.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 37.w),
              child: Text(
                "Выберите портал",
                style: textStyle.Header1blue,
              ),
            ),
            const ContinueButton(),
          ],
        ),
      ),
    );
  }
}

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<ChoosePortalModel>();
    return Center(
      child: SizedBox(
        width: 251.w,
        height: 46.h,
        child: ElevatedButton(
          style: buttonStyle.Default,
          onPressed: () => model.goTo(context),
          child: Text(
            "Продолжить",
            style: textStyle.Buttontext,
          ),
        ),
      ),
    );
  }
}
