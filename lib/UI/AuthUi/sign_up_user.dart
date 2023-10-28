import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:snippett/Domain/Models/AuthModels/sign_up_user_model.dart';
import 'package:snippett/Style/button_style.dart';
import 'package:snippett/Style/text_style.dart';
import 'package:snippett/Style/colors.dart';

class SignUpUser extends StatelessWidget {
  const SignUpUser({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => SignUpUserModel(),
      child: const SubSignUpUser(),
    );
  }
}

class SubSignUpUser extends StatelessWidget {
  const SubSignUpUser({super.key});

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
                SizedBox(
                  height: 24.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                  ),
                  child: const BackButton(),
                ),
                SizedBox(
                  height: 60.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Text(
                    'Пользователь',
                    style: textStyle.Header1,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Text(
                    "Регистрация",
                    style: textStyle.Header2,
                  ),
                ),
                SizedBox(
                  height: 36.h,
                ),
                EmailTextField(),
                SizedBox(
                  height: 36.h,
                ),
                const PasswordTextField(),
                SizedBox(
                  height: 36.h,
                ),
                const ConfirmPasswordTextField(),
                SizedBox(
                  height: 36.h,
                ),
                const CreateAccountButton(),
                SizedBox(
                  height: 36.h,
                ),
                const LogInButton()
              ],
            ),
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
    final model = context.watch<SignUpUserModel>();
    return Center(
      child: SizedBox(
        width: 335.w,
        height: 48.h,
        child: CupertinoTextField(
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) {
            model.email = value;
            model.checkValid(model.email);
            redact = 0;
          },
          placeholder: "Введите Email",
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

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final model = context.watch<SignUpUserModel>();
    return Center(
      child: SizedBox(
        width: 335.w,
        height: 48.h,
        child: CupertinoTextField(
          suffix: Padding(
            padding: const EdgeInsets.only(right: 5),
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

class ConfirmPasswordTextField extends StatelessWidget {
  const ConfirmPasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final model = context.watch<SignUpUserModel>();
    return Center(
      child: SizedBox(
        width: 335.w,
        height: 48.h,
        child: CupertinoTextField(
          suffix: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: GestureDetector(
              onTap: () => model.changeConfirmCheck(),
              child: model.passwordCheckConfirm
                  ? ImageIcon(
                      const AssetImage("assets/image/viewPassword.png"),
                      size: 25.w,
                      color: colorrs.neutral300,
                    )
                  : ImageIcon(
                      const AssetImage("assets/image/unViewPassword.png"),
                      size: 20.w,
                      color: colorrs.neutral300,
                    ),
            ),
          ),
          obscureText: !model.passwordCheckConfirm,
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) => model.email = value,
          placeholder: "Подтвердите пароль",
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

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final model = context.watch<SignUpUserModel>();
    return Center(
      child: SizedBox(
        width: 335.w,
        height: 56.h,
        child: ElevatedButton(
          style: buttonStyle.Default,
          onPressed: () =>
              model.createUser(model.email, model.password, 1, 1, context),
          child: Text(
            "Войти",
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
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: icon,
    );
  }
}

class LogInButton extends StatelessWidget {
  const LogInButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<SignUpUserModel>();
    return Align(
      alignment: Alignment.bottomCenter,
      child: GestureDetector(
        onTap: () => model.goToSignIn(context),
        child: RichText(
          text: const TextSpan(
            text: 'У вас уже есть учетная запись?',
            children: <TextSpan>[
              TextSpan(
                text: ' Войти',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
