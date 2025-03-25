import 'package:adrox/screens/Login/creatAccount/verifyscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/images.dart';
import '../../../utils/text.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  final walletAddress = TextEditingController();
  final mnemonicKey = TextEditingController();

  void verifyScreen(){
    Navigator.push(context, MaterialPageRoute(builder: (context) =>
    const VerifyScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      resizeToAvoidBottomInset: true,
      body:Container(
          height: double.infinity.h,
          width: double.infinity.w,
          padding: EdgeInsets.only(bottom: 20.h),
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(
              AstImg.loginBg),fit: BoxFit.cover)),
          child: Align(
            alignment: Alignment.bottomCenter, // Adjust as needed
            child: SingleChildScrollView(
              child: SizedBox(
               height:  635.h,
                child: Container(
                  margin: EdgeInsets.only(top: 200.h), // Equivalent to top: 200.h in Positioned
                  padding: EdgeInsets.all(25.h),
                  height: 520.h,
                  width: 320.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        StringValues.loginTitle,
                        style: TextStyle(
                          fontFamily: "Roboto-bold",
                          fontSize: 25.sp,
                        ),
                      ),
                      Text(
                        StringValues.loginCont,
                        style: TextStyle(
                          color: Colors.black54,
                          fontFamily: "Roboto-lite",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      Text(
                        "Wallet Address",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Roboto-normal",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      TextField(
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.black45, fontFamily: "Roboto-Normal", fontSize: 14.sp,decoration: TextDecoration.none,
                        decorationThickness: 0),
                        cursorColor: Colors.transparent,
                        controller: walletAddress,
                        decoration: InputDecoration(
                          hintText: "Enter Wallet Address",
                            hintStyle: TextStyle(
                          color: Colors.black45, fontFamily: "Roboto-lite", fontSize: 14.sp,
                        ),
                            contentPadding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 20.w),
                          enabledBorder: OutlineInputBorder(borderSide: const BorderSide(
                              color: Colors.grey
                          ),borderRadius: BorderRadius.circular(20.r)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                              color: Colors.grey
                          ),borderRadius: BorderRadius.circular(20.r)),
                          border: OutlineInputBorder(borderSide: const BorderSide(
                            color: Colors.grey
                          ),borderRadius: BorderRadius.circular(20.r))
                        ),
                      ),
                      Text(
                        "Mnemonic Key",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Roboto-normal",
                          fontSize: 14.sp,
                        ),
                      ),
                      TextField(
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.black45, fontFamily: "Roboto-Normal", fontSize: 14.sp,decoration: TextDecoration.none,
                            decorationThickness: 0),
                        cursorColor: Colors.transparent,
                        controller: mnemonicKey,
                        decoration: InputDecoration(
                            hintText: "Enter Mnemonic key",
                            hintStyle: TextStyle(
                              color: Colors.black45, fontFamily: "Roboto-lite", fontSize: 14.sp,
                            ),
                            suffixIcon: TextButton(onPressed: () {},child: Text("Paste",style:TextStyle(
                              color: Colors.blueAccent,
                              fontFamily: "Roboto-normal",
                              fontSize: 14.sp,
                            ))),
                            contentPadding: EdgeInsets.symmetric(vertical: 25.h,horizontal: 20.w),
                            enabledBorder: OutlineInputBorder(borderSide: const BorderSide(
                                color: Colors.grey
                            ),borderRadius: BorderRadius.circular(20.r)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.grey
                                ),borderRadius: BorderRadius.circular(20.r)),
                            border: OutlineInputBorder(borderSide: const BorderSide(
                                color: Colors.grey
                            ),borderRadius: BorderRadius.circular(20.r))
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(100.w, 40.h),
                              backgroundColor: const Color(0xffF4F4F6),
                            ),
                            child: Text(
                              "Back",
                              style: TextStyle(
                                fontFamily: "Roboto-normal",
                                fontSize: 16.sp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              verifyScreen();
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(150.w, 40.h),
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
              ),
            ),
          )
      ),
    ));
  }
}
