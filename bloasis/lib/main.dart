import 'package:bloasis/colors.dart';
import 'package:bloasis/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog Oasis',
      theme: ThemeData(
        fontFamily: 'ooohBaby',
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'ooohBaby'),
        scaffoldBackgroundColor: AppColors.secondaryColor,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 1,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
          color: AppColors.logoColor2,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
