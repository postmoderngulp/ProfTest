import 'package:flutter/material.dart';
import 'package:snippett/Style/text_style.dart';

class supportAdmin extends StatelessWidget {
  const supportAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Text(
          "Support",
          style: textStyle.Header1blue,
        ),
      ),
    );
  }
}
