import 'package:flutter/material.dart';
import 'package:snippett/Style/text_style.dart';

class analyticsHr extends StatelessWidget {
  const analyticsHr({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Text(
          "Analyrics",
          style: textStyle.Header1blue,
        ),
      ),
    );
  }
}
