import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:snippett/Domain/Models/AdminModels/add_ed_material_model.dart';
import 'package:snippett/Style/colors.dart';
import 'package:snippett/Style/text_style.dart';
import 'package:snippett/Style/button_style.dart';

class AddEdMaterial extends StatelessWidget {
  const AddEdMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddEdMaterialModel(),
      child: const subAddEdMaterial(),
    );
  }
}

class subAddEdMaterial extends StatelessWidget {
  const subAddEdMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: SafeArea(
            child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: EdgeInsets.only(left: 19.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 93.h,
                ),
                Text(
                  "Добавление материала",
                  style: textStyle.Header2,
                ),
                SizedBox(
                  height: 36.h,
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
                  height: 25.h,
                ),
                Text(
                  "Описание",
                  style: textStyle.Subtitle,
                ),
                SizedBox(
                  height: 4.h,
                ),
                const inputTextField(),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  "Ссылка",
                  style: textStyle.Subtitle,
                ),
                SizedBox(
                  height: 14.h,
                ),
                const linkTextField(),
                SizedBox(
                  height: 48.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const deleteItemButton(),
                      SizedBox(
                        width: 14.w,
                      ),
                      const SaveButton()
                    ],
                  ),
                )
              ],
            ),
          ),
        )));
  }
}

class nameTextField extends StatelessWidget {
  const nameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<AddEdMaterialModel>();
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

class inputTextField extends StatelessWidget {
  const inputTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<AddEdMaterialModel>();
    return Center(
      child: SizedBox(
        width: 354.w,
        height: 80.h,
        child: CupertinoTextField(
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
      ),
    );
  }
}

class linkTextField extends StatelessWidget {
  const linkTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<AddEdMaterialModel>();
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

class deleteItemButton extends StatelessWidget {
  const deleteItemButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 92.w,
        height: 36.h,
        child: ElevatedButton(
          style: buttonStyle.dangerButton,
          onPressed: () {},
          child: Text(
            "Удалить",
            style: textStyle.SmallTextDanger,
          ),
        ));
  }
}

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 123.w,
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
                "Сохранить",
                style: textStyle.SmallButtonText,
              ),
            ],
          )),
    );
  }
}
