import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:snippett/Domain/Models/AdminModels/create_test_model_admin.dart';
import 'package:snippett/Style/box_decoration_style.dart';
import 'package:snippett/Style/colors.dart';
import 'package:snippett/Style/text_style.dart';
import 'package:snippett/Style/button_style.dart';

class CreateTestAdmin extends StatelessWidget {
  const CreateTestAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CreateTestAdminModel(),
      child: const SubCreateTestAdmin(),
    );
  }
}

class SubCreateTestAdmin extends StatelessWidget {
  const SubCreateTestAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 83.h,
                ),
                Text(
                  "Добавление теста",
                  style: textStyle.Header2,
                ),
                SizedBox(
                  height: 28.h,
                ),
                Text(
                  "Название",
                  style: textStyle.Subtitle,
                ),
                SizedBox(
                  height: 14.h,
                ),
                const nameTextField(),
                SizedBox(
                  height: 28.h,
                ),
                Text(
                  "Модуль",
                  style: textStyle.Subtitle,
                ),
                SizedBox(
                  height: 14.h,
                ),
                const moduleTextField(),
                SizedBox(
                  height: 28.h,
                ),
                const ListQuestion(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListQuestion extends StatelessWidget {
  const ListQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 2,
          shrinkWrap: true,
          itemBuilder: ((context, index) => Padding(
                padding: EdgeInsets.only(bottom: 15.h),
                child: const ElementQuestion(),
              ))),
    );
  }
}

class ElementQuestion extends StatelessWidget {
  const ElementQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: boxStyle.questionItem,
      width: MediaQuery.of(context).size.width,
      height: 562.h,
      child: Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 14.h,
            ),
            Text(
              "Вопрос 1",
              style: textStyle.Header2,
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              "Описание",
              style: textStyle.Subtitle,
            ),
            SizedBox(
              height: 14.h,
            ),
            const descriptionTextField(),
            SizedBox(
              height: 16.h,
            ),
            Text(
              "Баллы",
              style: textStyle.Subtitle,
            ),
            SizedBox(
              height: 14.h,
            ),
            const ballsTextField(),
            SizedBox(
              height: 16.h,
            ),
            Text(
              "Вариант 1",
              style: textStyle.Subtitle,
            ),
            SizedBox(
              height: 14.h,
            ),
            firstVariantTextField(),
          ],
        ),
      ),
    );
  }
}

class nameTextField extends StatelessWidget {
  const nameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CreateTestAdminModel>();
    return Center(
      child: SizedBox(
        width: 354.w,
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

class moduleTextField extends StatelessWidget {
  const moduleTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CreateTestAdminModel>();
    return Center(
      child: SizedBox(
        width: 354.w,
        height: 40.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) {},
          placeholder: "Выберите пункт",
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

class descriptionTextField extends StatelessWidget {
  const descriptionTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CreateTestAdminModel>();
    return Center(
      child: SizedBox(
        width: 300.w,
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

class ballsTextField extends StatelessWidget {
  const ballsTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CreateTestAdminModel>();
    return Center(
      child: SizedBox(
        width: 300.w,
        height: 40.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) {},
          placeholder: "Введите количество",
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

class firstVariantTextField extends StatelessWidget {
  const firstVariantTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CreateTestAdminModel>();
    return Center(
      child: SizedBox(
        width: 300.w,
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
