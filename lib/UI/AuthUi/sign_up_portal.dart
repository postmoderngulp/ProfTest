import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:snippett/Domain/Models/AuthModels/sign_up_portal_model.dart';
import 'package:snippett/Style/button_style.dart';
import 'package:snippett/Style/text_style.dart';
import 'package:snippett/Style/colors.dart';

class SignUpPortal extends StatelessWidget {
  const SignUpPortal({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => SignUpPortalModel(),
      child: const SubSignUpAdmin(),
    );
  }
}

class SubSignUpAdmin extends StatelessWidget {
  const SubSignUpAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BackButton(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 37.w),
                  child: Text(
                    "Регистрация портала",
                    style: textStyle.Header1blue,
                  ),
                ),
                SizedBox(
                  height: 45.h,
                ),
                const numberTextField(),
                SizedBox(
                  height: 20.h,
                ),
                EmailTextField(),
                SizedBox(
                  height: 20.h,
                ),
                const innTextField(),
                SizedBox(
                  height: 20.h,
                ),
                const nameOrganTextField(),
                SizedBox(
                  height: 20.h,
                ),
                const adressOrganTextField(),
                SizedBox(
                  height: 20.h,
                ),
                const PasswordTextField(),
                SizedBox(
                  height: 20.h,
                ),
                const CreatePortalButton(),
                SizedBox(
                  height: 28.h,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 74.h),
                  child: const LogInButton(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class numberTextField extends StatelessWidget {
  const numberTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<SignUpPortalModel>();
    return Center(
      child: SizedBox(
        width: 320.w,
        height: 50.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          autofocus: true,
          keyboardType: TextInputType.number,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) => model.number = value,
          placeholder: "Телефон",
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

class EmailTextField extends StatelessWidget {
  int redact = -1;
  EmailTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final model = context.watch<SignUpPortalModel>();
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
                    : model.emailValide
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

class innTextField extends StatelessWidget {
  const innTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<SignUpPortalModel>();
    return Center(
      child: SizedBox(
        width: 320.w,
        height: 50.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          autofocus: true,
          keyboardType: TextInputType.number,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) => model.inn = value,
          placeholder: "ИНН",
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

class nameOrganTextField extends StatelessWidget {
  const nameOrganTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<SignUpPortalModel>();
    return Center(
      child: SizedBox(
        width: 320.w,
        height: 50.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) => model.nameOrganization = value,
          placeholder: "Название организации",
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

class adressOrganTextField extends StatelessWidget {
  const adressOrganTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<SignUpPortalModel>();
    return Center(
      child: SizedBox(
        width: 320.w,
        height: 50.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) => model.adressOrganization = value,
          placeholder: "Адрес организации",
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

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final model = context.watch<SignUpPortalModel>();
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
          placeholder: "Введите пароль",
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

class CreatePortalButton extends StatelessWidget {
  const CreatePortalButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final model = context.watch<SignUpPortalModel>();
    return Center(
      child: SizedBox(
        width: 294.w,
        height: 46.h,
        child: ElevatedButton(
          style: buttonStyle.Default,
          onPressed: () => model.createPortal(
              model.email,
              model.password,
              model.nameOrganization,
              model.number,
              model.inn,
              model.adressOrganization,
              context),
          child: Text(
            "Зарегистрироваться",
            style: textStyle.Buttontext,
          ),
        ),
      ),
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    var icon = Icon(
      Icons.arrow_back_ios_new_rounded,
      color: colorrs.neutral300,
      size: 26.w,
    );
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: icon,
      ),
    );
  }
}

class LogInButton extends StatelessWidget {
  const LogInButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<SignUpPortalModel>();
    return Align(
        alignment: Alignment.bottomCenter,
        child: Center(
          child: GestureDetector(
            onTap: () => model.goToSignIn(context),
            child: Text(
              "Есть аккаунт? Войти",
              style: textStyle.SmallTextBlue,
            ),
          ),
        ));
  }
}
