import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      splitScreenMode: true,
      designSize: Size(375, 825),
      child: MaterialApp(
        title: 'Flutter Demo',
        // home: LoginScreen(),
      ),
    );
  }
}
