import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:snippett/Domain/Models/AuthModels/portal_enter_model.dart';
import 'package:snippett/Domain/Models/AuthModels/sign_in_model.dart';
import 'package:snippett/Navigation/Navigate.dart';
import 'package:snippett/Style/button_style.dart';
import 'package:snippett/Style/colors.dart';
import 'package:snippett/Style/text_style.dart';
import 'package:snippett/Style/box_decoration_style.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableProvider(
      create: (BuildContext context) => SignInModel(),
      child: const SubSignIn(),
    );
  }
}

class SubSignIn extends StatefulWidget {
  const SubSignIn({super.key});

  @override
  State<SubSignIn> createState() => _SubSignInState();
}

class _SubSignInState extends State<SubSignIn> {
  @override
  Widget build(BuildContext context) {
    final model = context.read<SignInModel>();
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 37.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 145.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Вход",
                          style: textStyle.Header1blue,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 45.h,
                  ),
                  EmailTextField(),
                  SizedBox(
                    height: 20.h,
                  ),
                  const PasswordTextField(),
                  SizedBox(
                    height: 45.h,
                  ),
                  const LogInButton(),
                  SizedBox(
                    height: 241.h,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () => model.goToSignUpPortal(context),
                      child: Text(
                        "Ещё нет аккаунта? Зарегистрироваться",
                        style: textStyle.SmallTextBlue,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class EmailTextField extends StatelessWidget {
  late int redact = -1;
  EmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<SignInModel>();
    return Center(
      child: SizedBox(
        width: 320.w,
        height: 50.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) {
            model.email = value;
            model.checkValid(model.email);
            redact = 0;
          },
          placeholder: "Электронная почта",
          placeholderStyle: textStyle.fieldText,
          decoration: BoxDecoration(
            border: Border.all(
                color: redact == -1
                    ? Colors.grey
                    : model.emailVailde
                        ? colorrs.primary700
                        : colorrs.danger700),
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<SignInModel>();
    return Center(
      child: SizedBox(
        width: 320.w,
        height: 50.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          suffix: Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 15.h),
            child: GestureDetector(
              onTap: () => model.changeCheck(),
              child: model.passwordCheck
                  ? const ImageIcon(
                      AssetImage("assets/image/viewPassword.png"),
                      color: colorrs.neutral300,
                    )
                  : const ImageIcon(
                      AssetImage("assets/image/unViewPassword.png"),
                      color: colorrs.neutral300,
                    ),
            ),
          ),
          obscureText: !model.passwordCheck,
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) => model.password = value,
          placeholder: "Пароль",
          placeholderStyle: textStyle.fieldText,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}

class LogInButton extends StatelessWidget {
  const LogInButton({super.key});

  @override
  Widget build(BuildContext context) {
    final role;
    final model = context.watch<SignInModel>();
    return Center(
      child: SizedBox(
        width: 251.w,
        height: 46.h,
        child: ElevatedButton(
          style: buttonStyle.Default,
          onPressed: () => model.emailVailde
              ? {
                  model.signIn(model.email, model.password, context),
                  Timer(Duration(seconds: 1), () {
                    showModalBottomSheet<dynamic>(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(35),
                              topRight: Radius.circular(35))),
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return ChangeNotifierProvider(
                            create: (BuildContext context) =>
                                portalEnterModel(),
                            child: PortalsBanner());
                      },
                    );
                  })
                }
              : null,
          child: Text(
            "Войти",
            style: textStyle.Buttontext,
          ),
        ),
      ),
    );
  }
}

class PortalsBanner extends StatefulWidget {
  int val = -1;
  PortalsBanner({
    super.key,
  });

  @override
  State<PortalsBanner> createState() => _PortalsBannerState();
}

class _PortalsBannerState extends State<PortalsBanner> {
  @override
  Widget build(BuildContext context) {
    final model = context.watch<portalEnterModel>();
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 39.w, vertical: 23.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Выберите портал",
              style: textStyle.SubTitleBlue,
            ),
            SizedBox(
              height: 36.h,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: model.listPortal.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: GestureDetector(
                    onTap: () => setState(() {
                      widget.val = index;
                    }),
                    child: Container(
                      width: 262.w,
                      height: 48.h,
                      decoration: widget.val == index
                          ? boxStyle.clickSecondaryDecoration
                          : boxStyle.secondaryDecoration,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 19.w, vertical: 12.h),
                            child: Text(
                              model.listPortal[index].name,
                              style: textStyle.ButtontextBlue,
                            ),
                          )),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 15),
                child: ContinueButton(
                  index: widget.val,
                )),
          ],
        ),
      ),
    );
  }
}

class ContinueButton extends StatelessWidget {
  int index;
  ContinueButton({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<portalEnterModel>();
    return Center(
      child: SizedBox(
        width: 251.w,
        height: 46.h,
        child: ElevatedButton(
          style: buttonStyle.Default,
          onPressed: () {
            print(index);
            model.SavePortal(model.listPortal[index]);
            Navigator.of(context).pushNamed(
              NavigatePaths.MainScreenAdminPath,
            );
          },
          child: Text(
            "Продолжить",
            style: textStyle.Buttontext,
          ),
        ),
      ),
    );
  }
}
