import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:snippett/Style/text_style.dart';
import 'package:snippett/Style/colors.dart';
import '../../../Domain/Models/drawerModels/drawerModelsHr/about_company_hr_model.dart';

class aboutCompanyHR extends StatelessWidget {
  const aboutCompanyHR({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => aboutCompanyHrModel(),
      child: const subAboutCopmanyHr(),
    );
  }
}

class subAboutCopmanyHr extends StatelessWidget {
  const subAboutCopmanyHr({super.key});

  @override
  Widget build(BuildContext context) {
    var circleAvatar = const CircleAvatar(
      backgroundColor: Colors.white,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 95.h,
          color: colorrs.primary600,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: SizedBox(
                  width: 64.w,
                  height: 64.h,
                  child: circleAvatar,
                )),
          ),
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
                    "Название компании",
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
                  Text(
                    "МяуМЯу",
                    style: textStyle.Subtitle,
                  ),
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
                  Text(
                    "МяуМЯу",
                    style: textStyle.Subtitle,
                  ),
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
                  Text(
                    "МяуМЯу",
                    style: textStyle.Subtitle,
                  ),
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
                  Text(
                    "МяуМЯу",
                    style: textStyle.Subtitle,
                  ),
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
                  Text(
                    "МяуМЯу",
                    style: textStyle.Subtitle,
                  ),
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
                  Text(
                    "МяуМЯу",
                    style: textStyle.Subtitle,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
