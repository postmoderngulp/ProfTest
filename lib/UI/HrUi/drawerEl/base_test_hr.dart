import 'package:flutter/material.dart';
import 'package:snippett/Style/text_style.dart';

class baseTestHr extends StatelessWidget {
  const baseTestHr({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Text(
          "My applications",
          style: textStyle.Header1blue,
        ),
      ),
    );
  }
}
