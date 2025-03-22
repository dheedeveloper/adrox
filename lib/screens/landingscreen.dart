import 'package:adrox/screens/createaccount.dart';
import 'package:adrox/screens/signinscreen.dart';
import 'package:adrox/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/images.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  void signIn(){
    Navigator.push(context, MaterialPageRoute(builder: (context) =>
    const SignInScreen()));
  }

  void createWallet(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccount(),));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:Container(
        height: double.infinity.h,
        width: double.infinity.w,
        padding: EdgeInsets.only(bottom: 20.h),
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(
          AstImg.loginBg),fit: BoxFit.cover)),
        child: Align(
          alignment: Alignment.bottomCenter, // Adjust as needed
          child: Container(
            margin: EdgeInsets.only(top: 200.h), // Equivalent to top: 200.h in Positioned
            padding: EdgeInsets.all(20.h),
            height: 320.h,
            width: 320.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  StringValues.landingTitle,
                  style: TextStyle(
                    fontFamily: "Roboto-bold",
                    fontSize: 31.sp,
                  ),
                ),
                Text(
                  StringValues.landingCont,
                  style: TextStyle(
                    color: Colors.black54,
                    fontFamily: "Roboto-normal",
                    fontSize: 12.sp,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        createWallet();
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(150.w, 40.h),
                        backgroundColor: const Color(0xff12172C),
                      ),
                      child: Text(
                        "Create Wallet",
                        style: TextStyle(
                          fontFamily: "Roboto-normal",
                          fontSize: 16.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        signIn();
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(100.w, 40.h),
                        backgroundColor: const Color(0xff3F5FF2),
                      ),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          fontFamily: "Roboto-normal",
                          fontSize: 16.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ),
    ));
  }
}
