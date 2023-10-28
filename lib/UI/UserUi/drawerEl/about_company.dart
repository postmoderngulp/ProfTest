import 'package:flutter/material.dart';
import 'package:snippett/Style/text_style.dart';

class aboutCompanyUser extends StatelessWidget {
  const aboutCompanyUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Text(
          "About company",
          style: textStyle.Header1blue,
        ),
      ),
    );
  }
}
