import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:snippett/Domain/Models/drawerModels/drawerModelsAdmin/applications_admin_model.dart';
import 'package:snippett/Style/colors.dart';
import 'package:snippett/Style/text_style.dart';

class aplicationsAdmin extends StatelessWidget {
  const aplicationsAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ApplicationAdminModel(),
      child: const subApplicationsAdmin(),
    );
  }
}

class subApplicationsAdmin extends StatelessWidget {
  const subApplicationsAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 27.h,
                ),
                Text(
                  "Мои заявки",
                  style: textStyle.Header1blue,
                ),
                SizedBox(
                  height: 32.h,
                ),
                const ListApplications(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListApplications extends StatelessWidget {
  const ListApplications({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: 12,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: EdgeInsets.only(bottom: 32.h),
        child: const ApplicationElement(),
      ),
    ));
  }
}

class ApplicationElement extends StatelessWidget {
  const ApplicationElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 363.w,
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: colorrs.neutral0,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 0.5,
            blurRadius: 2, // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Text(
              "Name",
              style: textStyle.Subtitle,
            ),
          ),
          const Spacer(),
          const ImageIcon(
            AssetImage("assets/image/interpunct.png"),
            color: colorrs.neutral500,
          ),
          Text(
            "Активно",
            style: textStyle.Subtitle,
          ),
          const Spacer(),
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
