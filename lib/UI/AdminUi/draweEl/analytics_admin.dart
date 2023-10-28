import 'package:flutter/material.dart';
import 'package:snippett/Style/text_style.dart';

class analyticsAdmin extends StatelessWidget {
  const analyticsAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Text(
          "Analytics",
          style: textStyle.Header1blue,
        ),
      ),
    );
  }
}
