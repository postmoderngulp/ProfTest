import 'package:flutter/material.dart';
import 'package:snippett/Style/text_style.dart';

class structureHr extends StatelessWidget {
  const structureHr({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Text(
          "Structure",
          style: textStyle.Header1blue,
        ),
      ),
    );
  }
}
