import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:snippett/Domain/Models/CommonModels/study_material_module_common.dart';
import 'package:snippett/Style/box_decoration_style.dart';
import 'package:snippett/Style/text_style.dart';
import 'package:snippett/Style/colors.dart';

class StudyMaterialModule extends StatelessWidget {
  const StudyMaterialModule({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StudyMaterialCommonModule(),
      child: const subStudyMaterialModule(),
    );
  }
}

class subStudyMaterialModule extends StatelessWidget {
  const subStudyMaterialModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
          child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60.h,
              ),
              Text(
                "Сессия",
                style: textStyle.Header1,
              ),
              SizedBox(
                height: 47.h,
              ),
              Text(
                "Набрано баллов",
                style: textStyle.Subtitle,
              ),
              Text(
                "14",
                style: textStyle.Subtitle,
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                "Длительность сессии",
                style: textStyle.Subtitle,
              ),
              Text(
                "0:35:55",
                style: textStyle.Subtitle,
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                "Причина неудачного прохождения",
                style: textStyle.Subtitle,
              ),
              Text(
                "Лишился глаза",
                style: textStyle.Subtitle,
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                "Ссылка на видео-прохождение",
                style: textStyle.Subtitle,
              ),
              SizedBox(
                height: 5.h,
              ),
              const LinkTextField(),
              SizedBox(
                height: 47.h,
              ),
              Text(
                "Тестирование",
                style: textStyle.Header1,
              ),
              SizedBox(
                height: 40.h,
              ),
              const ListTesting(),
            ],
          ),
        ),
      )),
    );
  }
}

class ListTesting extends StatelessWidget {
  const ListTesting({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: EdgeInsets.only(
          right: 19.w,
        ),
        child: const testingElement(),
      ),
    ));
  }
}

class LinkTextField extends StatelessWidget {
  const LinkTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<StudyMaterialCommonModule>();
    return SizedBox(
      width: 321.w,
      height: 40.h,
      child: CupertinoTextField(
        padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
        autofocus: true,
        keyboardType: TextInputType.emailAddress,
        onEditingComplete: () => FocusScope.of(context).nextFocus(),
        onChanged: (value) {},
        placeholder: "Приложите ссылку",
        placeholderStyle: textStyle.fieldText,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}

class testingElement extends StatelessWidget {
  const testingElement({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<StudyMaterialCommonModule>();
    return GestureDetector(
      onTap: () => model.goToPassTest(context),
      child: Container(
        width: 354.w,
        height: 88.h,
        decoration: boxStyle.studyItem,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: textStyle.Subtitle,
                  ),
                  Text(
                    "SubName",
                    style: textStyle.SmallText,
                  ),
                ],
              ),
              Spacer(),
              ImageIcon(
                AssetImage("assets/image/alertSucces.png"),
                size: 32.w,
                color: colorrs.neutral200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
