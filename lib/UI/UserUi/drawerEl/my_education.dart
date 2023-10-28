import 'package:flutter/material.dart';
import 'package:snippett/Style/text_style.dart';

class myEducationUser extends StatelessWidget {
  const myEducationUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Text(
          "My education",
          style: textStyle.Header1blue,
        ),
      ),
    );
  }
}
