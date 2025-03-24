import 'dart:async';
import 'package:adrox/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'landingscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  splash(){
    Timer(const Duration(seconds: 3), () =>
        Navigator.push(context, MaterialPageRoute(builder: (context) => const LandingScreen(),)));
  }

  @override
  void initState() {
    splash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(height: double.infinity.h,width: double.infinity.w,decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AstImg.splashBg),fit: BoxFit.cover)
      )),
    ));
  }
}
