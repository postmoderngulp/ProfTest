import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:snippett/Domain/Models/drawerModels/drawerModelsAdmin/about_company_admin_model.dart';
import 'package:snippett/Style/button_style.dart';
import 'package:snippett/Style/colors.dart';
import 'package:snippett/Style/text_style.dart';

class aboutCompanyAdmin extends StatelessWidget {
  const aboutCompanyAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => aboutCompanyAdminModel(),
      child: const subAboutCompanyAdmin(),
    );
  }
}

class subAboutCompanyAdmin extends StatelessWidget {
  const subAboutCompanyAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    var circleAvatar = const CircleAvatar(
      backgroundColor: Colors.white,
    );
    final model = context.watch<aboutCompanyAdminModel>();
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 95.h,
          color: colorrs.primary600,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 64.w,
                    height: 64.h,
                    child: circleAvatar,
                  ),
                  const Align(
                    alignment: Alignment.topRight,
                    child: ImageIcon(
                      AssetImage("assets/image/Pencil.png"),
                      color: Colors.white,
                    ),
                  ),
                ],
              )),
        ),
        SizedBox(
          height: 13.h,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 39.w),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.email,
                    style: textStyle.Header1blue,
                  ),
                  SizedBox(
                    height: 34.h,
                  ),
                  Text(
                    "Цель",
                    style: textStyle.Subtitle,
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  const aimTextField(),
                  SizedBox(
                    height: 25.h,
                  ),
                  Text(
                    "Миссия",
                    style: textStyle.Subtitle,
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  const MissionTextField(),
                  SizedBox(
                    height: 25.h,
                  ),
                  Text(
                    "Адрес",
                    style: textStyle.Subtitle,
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  const AdressTextField(),
                  SizedBox(
                    height: 25.h,
                  ),
                  Text(
                    "ИНН",
                    style: textStyle.Subtitle,
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  const InnTextField(),
                  SizedBox(
                    height: 25.h,
                  ),
                  Text(
                    "Телефон",
                    style: textStyle.Subtitle,
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  const NumberTextField(),
                  SizedBox(
                    height: 25.h,
                  ),
                  Text(
                    "E-mail",
                    style: textStyle.Subtitle,
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  const EmailTextField(),
                  SizedBox(
                    height: 25.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 96.h),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [CancelButton(), SaveButton()],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class aimTextField extends StatelessWidget {
  const aimTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<aboutCompanyAdminModel>();
    return Center(
      child: SizedBox(
        width: 320.w,
        height: 50.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) => model.purpose = value,
          placeholder: model.purpose,
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

class MissionTextField extends StatelessWidget {
  const MissionTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<aboutCompanyAdminModel>();
    return Center(
      child: SizedBox(
        width: 320.w,
        height: 50.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) => model.Mission = value,
          placeholder: model.Mission,
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

class AdressTextField extends StatelessWidget {
  const AdressTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<aboutCompanyAdminModel>();
    return Center(
      child: SizedBox(
        width: 320.w,
        height: 50.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) => model.Address = value,
          placeholder: model.Address,
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

class InnTextField extends StatelessWidget {
  const InnTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<aboutCompanyAdminModel>();
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
          placeholder: model.inn,
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

class NumberTextField extends StatelessWidget {
  const NumberTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<aboutCompanyAdminModel>();
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
          placeholder: model.number,
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
  const EmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<aboutCompanyAdminModel>();
    return Center(
      child: SizedBox(
        width: 320.w,
        height: 50.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) => model.email = value,
          placeholder: model.email,
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

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 153.w,
        height: 46.h,
        child: ElevatedButton(
          style: buttonStyle.cancelButton,
          onPressed: () {},
          child: Text(
            "Отменить",
            style: textStyle.SmallText,
          ),
        ),
      ),
    );
  }
}

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<aboutCompanyAdminModel>();
    return Center(
      child: SizedBox(
        width: 153.w,
        height: 46.h,
        child: ElevatedButton(
          style: buttonStyle.Default,
          onPressed: () => model.putPortal(model.email, model.number,
              model.Address, model.color, model.Mission, model.description),
          child: Text(
            "Сохранить",
            style: textStyle.Buttontext,
          ),
        ),
      ),
    );
  }
}
