import 'package:flutter/material.dart';
import 'package:snippett/Style/text_style.dart';

class myAppealsUser extends StatelessWidget {
  const myAppealsUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Text(
          "My appeals",
          style: textStyle.Header1blue,
        ),
      ),
    );
  }
}
