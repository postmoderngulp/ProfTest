import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:snippett/Domain/Models/drawerModels/drawerModelsAdmin/analytics_admin_model.dart';
import 'package:snippett/Style/box_decoration_style.dart';
import 'package:snippett/Style/text_style.dart';

class analyticsAdmin extends StatelessWidget {
  const analyticsAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => analyticsAdminModel(),
      child: const subAnalyticsAdmin(),
    );
  }
}

class subAnalyticsAdmin extends StatelessWidget {
  const subAnalyticsAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 31.w, vertical: 12.h),
      child: Column(
        children: [
          SizedBox(
            height: 23.h,
          ),
          Container(
            decoration: boxStyle.secondaryDecoration,
            width: 332.w,
            height: 70.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Количество",
                        style: textStyle.Header2,
                      ),
                      Text(
                        "сотрудников",
                        style: textStyle.Header2,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Center(
                    child: Text(
                      "721K",
                      style: textStyle.Header1,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Container(
            decoration: boxStyle.secondaryDecoration,
            width: 332.w,
            height: 70.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Общий",
                        style: textStyle.Header2,
                      ),
                      Text(
                        "рейтинг",
                        style: textStyle.Header2,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Center(
                    child: Text(
                      "87%",
                      style: textStyle.Header1,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
