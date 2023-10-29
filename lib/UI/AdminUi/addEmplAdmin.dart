import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:snippett/Domain/Models/AdminModels/add_empl_admin_model.dart';
import 'package:snippett/Style/colors.dart';
import 'package:snippett/Style/text_style.dart';
import 'package:snippett/Style/button_style.dart';

class AddEmployeeAdmin extends StatelessWidget {
  const AddEmployeeAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddEmployeeAdminModel(),
      child: const SubAddEmployeeAdmin(),
    );
  }
}

class SubAddEmployeeAdmin extends StatelessWidget {
  const SubAddEmployeeAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: SafeArea(
            child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 93.h,
                ),
                Text(
                  "Добавление сотрудника",
                  style: textStyle.Header2,
                ),
                SizedBox(
                  height: 36.h,
                ),
                Text(
                  "ФИО сотрудника",
                  style: textStyle.Subtitle,
                ),
                SizedBox(
                  height: 14.h,
                ),
                const FIOTextField(),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  "E-mail",
                  style: textStyle.Subtitle,
                ),
                SizedBox(
                  height: 4.h,
                ),
                const emailTextField(),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  "Отдел",
                  style: textStyle.Subtitle,
                ),
                SizedBox(
                  height: 14.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 166.w, left: 18.w),
                  child: const departmentTextField(),
                ),
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

class departmentTextField extends StatelessWidget {
  const departmentTextField({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> sexList = ["Мужской", "Женский"];
    final dropValue = ValueNotifier('');
    final model = context.watch<AddEmployeeAdminModel>();
    return Center(
        child: SizedBox(
      width: 191.w,
      height: 50.h,
      child: Material(
        child: ValueListenableBuilder(
            valueListenable: dropValue,
            builder: (BuildContext context, String value, _) {
              return DropdownButtonFormField(
                decoration: InputDecoration(
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 15.0),
                  fillColor: colorrs.neutral0,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: colorrs.neutral0, width: 0)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: colorrs.neutral0, width: 0)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: colorrs.neutral0, width: 0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: colorrs.neutral300, width: 0)),
                ),
                isExpanded: true,
                hint: Text(
                  'Выберите пункт',
                  style: textStyle.SmallText,
                ),
                icon: Icon(Icons.keyboard_arrow_down_rounded),
                value: (value.isEmpty) ? null : value,
                onChanged: (choice) {
                  dropValue.value = choice.toString();
                },
                items: sexList
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ))
                    .toList(),
              );
            }),
      ),
    ));
  }
}

class FIOTextField extends StatelessWidget {
  const FIOTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<AddEmployeeAdminModel>();
    return Center(
      child: SizedBox(
        width: 321.w,
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

class emailTextField extends StatelessWidget {
  const emailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<AddEmployeeAdminModel>();
    return Center(
      child: SizedBox(
        width: 321.w,
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
            "Отменить",
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
                "Добавить",
                style: textStyle.SmallButtonText,
              ),
            ],
          )),
    );
  }
}
