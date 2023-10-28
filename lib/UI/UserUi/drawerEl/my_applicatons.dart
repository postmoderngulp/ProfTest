import 'package:flutter/material.dart';
import 'package:snippett/Style/text_style.dart';

class myApplicationUser extends StatelessWidget {
  const myApplicationUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Text(
          "My applicatons",
          style: textStyle.Header1blue,
        ),
      ),
    );
  }
}
