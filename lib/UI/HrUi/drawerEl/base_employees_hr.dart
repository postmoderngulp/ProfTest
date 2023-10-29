import 'package:flutter/material.dart';
import 'package:snippett/Style/text_style.dart';

class baseEmployeesHr extends StatelessWidget {
  const baseEmployeesHr({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Text(
          "Base Empl",
          style: textStyle.Header1blue,
        ),
      ),
    );
  }
}
