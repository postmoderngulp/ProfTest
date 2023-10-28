import 'package:flutter/material.dart';
import 'package:snippett/Style/text_style.dart';

class myResultUser extends StatelessWidget {
  const myResultUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Text(
          "My results",
          style: textStyle.Header1blue,
        ),
      ),
    );
  }
}
