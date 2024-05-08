import 'dart:async';

import 'package:bloasis/colors.dart';
import 'package:bloasis/screens/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      // Get.to(const HomeScreen());
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [AppColors.primaryColor1, AppColors.primaryColor2],
              begin: Alignment.centerLeft,
              end: Alignment.bottomRight)),
      child: Image.asset("assets/images/logo.png"),
    );
  }
}
