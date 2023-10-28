import 'package:flutter/material.dart';
import 'package:snippett/Style/text_style.dart';

class settingsAdmin extends StatelessWidget {
  const settingsAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Text(
          "Settings",
          style: textStyle.Header1blue,
        ),
      ),
    );
  }
}
