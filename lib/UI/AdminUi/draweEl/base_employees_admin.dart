import 'package:flutter/material.dart';
import 'package:snippett/Style/text_style.dart';

class baseEmployeesAdmin extends StatelessWidget {
  const baseEmployeesAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Text(
          "Base employees",
          style: textStyle.Header1blue,
        ),
      ),
    );
  }
}
