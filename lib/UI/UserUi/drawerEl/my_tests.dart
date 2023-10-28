import 'package:flutter/material.dart';
import 'package:snippett/Style/text_style.dart';

class myTestUser extends StatelessWidget {
  const myTestUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Text(
          "My tests",
          style: textStyle.Header1blue,
        ),
      ),
    );
  }
}
