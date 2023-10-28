import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:snippett/Domain/Models/AuthModels/choose_role_model.dart';
import 'package:snippett/Style/button_style.dart';
import 'package:snippett/Style/text_style.dart';

class ChooseRole extends StatelessWidget {
  const ChooseRole({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (BuildContext context) => ChooseRoleModel(),
        child: const SubChooseRole());
  }
}

class SubChooseRole extends StatelessWidget {
  const SubChooseRole({super.key});

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
              height: 240.h,
            ),
            Text(
              "Как вы хотитe зарегистрироваться?",
              textAlign: TextAlign.center,
              style: textStyle.Header2,
            ),
            SizedBox(
              height: 36.h,
            ),
            const UserSignUpButton(),
            SizedBox(
              height: 36.h,
            ),
            const AdminSignUpButton(),
            const LogInButton()
          ],
        ),
      ),
    );
  }
}

class UserSignUpButton extends StatelessWidget {
  const UserSignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final model = context.read<ChooseRoleModel>();
    return SizedBox(
      width: 335.w,
      height: 56.h,
      child: ElevatedButton(
        style: buttonStyle.Default,
        onPressed: () => model.goToUserSignUp(context),
        child: Text(
          "Пользователь",
          style: textStyle.Buttontext,
        ),
      ),
    );
  }
}

class AdminSignUpButton extends StatelessWidget {
  const AdminSignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final model = context.read<ChooseRoleModel>();
    return Center(
      child: SizedBox(
        width: 335.w,
        height: 56.h,
        child: ElevatedButton(
          style: buttonStyle.Default,
          onPressed: () => model.goToAdminSignUp(context),
          child: Text(
            "Портал",
            style: textStyle.Buttontext,
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
    final model = context.read<ChooseRoleModel>();
    return Expanded(
      child: Align(
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
      ),
    );
  }
}
