import 'package:filled/chat.dart';
import 'package:filled/creat_new_coures.dart';
import 'package:filled/home.dart';
import 'package:filled/main_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(375, 814),
      minTextAdapt: true,
      builder: (context ,child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: CreateNewCourse(),
        );
      },
    );
  }

}