import 'package:flutter/material.dart';
import 'package:snippett/Navigation/Navigate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final navigateService = NavigateService();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: navigateService.initialRoute,
        routes: navigateService.routes,
      ),
    );
  }
}
