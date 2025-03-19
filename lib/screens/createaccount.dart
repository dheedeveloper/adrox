import 'package:adrox/screens/backupphrase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/text.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  final name = TextEditingController();
  final emailId = TextEditingController();
  final refferalId = TextEditingController();

  void backupPhrase(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => BackupPhrase(),));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      resizeToAvoidBottomInset: false,
      body:Container(
          height: double.infinity.h,
          width: double.infinity.w,
          padding: EdgeInsets.only(bottom: 20.h),
          decoration: const BoxDecoration(color: Colors.blue),
          child: Align(
            alignment: Alignment.bottomCenter, // Adjust as needed
            child: Container(
              margin: EdgeInsets.only(top: 150.h), // Equivalent to top: 200.h in Positioned
              padding: EdgeInsets.all(20.h),
              height: 450.h,
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
                    "Create Wallet",
                    style: TextStyle(
                      fontFamily: "Roboto-bold",
                      fontSize: 25.sp,
                    ),
                  ),
                  Text(
                    StringValues.walletCont,
                    style: TextStyle(
                        color: Colors.black54,
                        fontFamily: "Roboto-lite",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  Text(
                    "Name",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Roboto-normal",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  TextField(
                    cursorColor: Colors.transparent,
                    controller: name,
                    decoration: InputDecoration(
                        hintText: "Enter your Name",
                        hintStyle: TextStyle(
                          color: Colors.black45, fontFamily: "Roboto-lite", fontSize: 14.sp,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 13.h,horizontal: 20.w),
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
                    "Email Id",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Roboto-normal",
                      fontSize: 14.sp,
                    ),
                  ),
                  TextField(
                    cursorColor: Colors.transparent,
                    controller: emailId,
                    decoration: InputDecoration(
                        hintText: "Enter your Email Id",
                        hintStyle: TextStyle(
                          color: Colors.black45, fontFamily: "Roboto-lite", fontSize: 14.sp,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 13.h,horizontal: 20.w),
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
                    "Referral Id",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Roboto-normal",
                      fontSize: 14.sp,
                    ),
                  ),
                  TextField(
                    cursorColor: Colors.transparent,
                    controller: emailId,
                    decoration: InputDecoration(
                        hintText: "Enter Referral Id",
                        hintStyle: TextStyle(
                          color: Colors.black45, fontFamily: "Roboto-lite", fontSize: 14.sp,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 13.h,horizontal: 20.w),
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
                              backupPhrase();
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(150.w, 40.h),
                          backgroundColor: const Color(0xff3F5FF2),
                        ),
                        child: Text(
                          "Next Step",
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
