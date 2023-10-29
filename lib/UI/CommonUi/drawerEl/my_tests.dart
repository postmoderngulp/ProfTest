import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snippett/Style/text_style.dart';

class myTestUser extends StatelessWidget {
  const myTestUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: SizedBox(
              width: 158.w,
              height: 88.h,
              child: Image.asset("assets/image/doc.png")),
        ),
        SizedBox(
          height: 24.h,
        ),
        Text(
          "Здесь ничего нет...",
          style: textStyle.SmallText,
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
