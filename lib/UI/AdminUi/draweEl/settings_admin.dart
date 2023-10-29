import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:snippett/Domain/Models/drawerModels/drawerModelsAdmin/setting_admin_model.dart';
import 'package:snippett/Style/box_decoration_style.dart';
import 'package:snippett/Style/text_style.dart';
import 'package:snippett/Style/colors.dart';
import 'package:snippett/Style/button_style.dart';

class settingsAdmin extends StatelessWidget {
  const settingsAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => settingsAdminModel(),
      child: const subSettingsAdmin(),
    );
  }
}

class subSettingsAdmin extends StatelessWidget {
  const subSettingsAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 33.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Text(
              "Администраторы",
              style: textStyle.Header2,
            ),
          ),
          SizedBox(
            height: 36.h,
          ),
          const profileAdmin(),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Text(
              "Тариф",
              style: textStyle.Header2,
            ),
          ),
          SizedBox(
            height: 21.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Text(
              "Сменить тариф",
              style: textStyle.SmallText,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          const tarifTextField(),
          SizedBox(
            height: 33.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Text(
              "Техническая документация",
              style: textStyle.Header2,
            ),
          ),
          SizedBox(
            height: 33.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: downloadButton(),
          ),
          SizedBox(
            height: 33.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Text(
              "Связь с техподдержкой",
              style: textStyle.Header2,
            ),
          ),
          SizedBox(
            height: 33.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Text(
              "Тема  обращения",
              style: textStyle.SmallText,
            ),
          ),
          SizedBox(
            height: 14.h,
          ),
          const themeTextField(),
          SizedBox(
            height: 25.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Text(
              "Вопрос",
              style: textStyle.Header2,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          const questionTextField(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: const sendButton(),
          )
        ],
      ),
    );
  }
}

class profileAdmin extends StatelessWidget {
  const profileAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/image/littleAvatar.png"),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Фамилия Имя Отчество",
                style: textStyle.SmallText,
              ),
              Text(
                "meowmeow@ya.ru",
                style: textStyle.SmallText,
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: const ImageIcon(
              AssetImage("assets/image/Pencil.png"),
              color: colorrs.neutral500,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: const ImageIcon(
              AssetImage("assets/image/trash.png"),
              color: colorrs.neutral500,
            ),
          ),
        ],
      ),
    );
  }
}

class tarifTextField extends StatelessWidget {
  const tarifTextField({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> sexList = ["Базовый", "Премиум"];
    final dropValue = ValueNotifier('');
    final model = context.watch<settingsAdminModel>();
    return Center(
        child: SizedBox(
      width: 338.w,
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
                      borderSide: const BorderSide(
                          color: colorrs.neutral150, width: 0)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: colorrs.neutral150, width: 0)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: colorrs.neutral150, width: 0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: colorrs.neutral300, width: 0)),
                ),
                isExpanded: true,
                hint: Text(
                  'Выберите тариф',
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

class downloadButton extends StatelessWidget {
  const downloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 140.w,
        height: 46.h,
        child: ElevatedButton(
          style: buttonStyle.secondaryButton,
          onPressed: () {},
          child: Text(
            "Скачать",
            style: textStyle.SmallTextBlue,
          ),
        ));
  }
}

class sendButton extends StatelessWidget {
  const sendButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 199.w,
        height: 46.h,
        child: ElevatedButton(
          style: buttonStyle.secondaryButton,
          onPressed: () {},
          child: Text(
            "Отправить",
            style: textStyle.SmallTextBlue,
          ),
        ));
  }
}

class themeTextField extends StatelessWidget {
  const themeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<settingsAdminModel>();
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

class questionTextField extends StatelessWidget {
  const questionTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<settingsAdminModel>();
    return Center(
      child: SizedBox(
        width: 321.w,
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
