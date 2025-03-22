import 'package:adrox/screens/downloadauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/images.dart';
import '../utils/text.dart';

class ConfirmBackup extends StatefulWidget {
  const ConfirmBackup({super.key});

  @override
  State<ConfirmBackup> createState() => _ConfirmBackupState();
}

class _ConfirmBackupState extends State<ConfirmBackup> {

  final enterPhrase = TextEditingController();
  void authenticator(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const DownloadAuth()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      resizeToAvoidBottomInset: false,
      body:Container(
          height: double.infinity.h,
          width: double.infinity.w,
          padding: EdgeInsets.only(bottom: 20.h),
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(
          AstImg.loginBg),fit: BoxFit.cover)),
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
                    "Confirm Backup",
                    style: TextStyle(
                      fontFamily: "Roboto-bold",
                      fontSize: 25.sp,
                    ),
                  ),
                  Text(
                    StringValues.backupCont,
                    style: TextStyle(
                        color: Colors.black54,
                        fontFamily: "Roboto-lite",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  Text(
                    "Phrase",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Roboto-normal",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(height: 185.h,
                    child: TextField(
                      cursorColor: Colors.transparent,
                      controller: enterPhrase,
                      decoration: InputDecoration(
                        hintText: "Enter Phrase",
                        hintStyle: TextStyle(
                          color: Colors.black45,
                          fontFamily: "Roboto-lite",
                          fontSize: 14.sp,
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 15.h), // Adjust hint position
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Enter Phrase",
                              style: TextStyle(
                                color: Colors.black45,
                                fontFamily: "Roboto-lite",
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ),
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(top: 15.h, right: 20.w), // Align to top-right
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "Paste",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontFamily: "Roboto-normal",
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ),
                        contentPadding: EdgeInsets.only(top: 20.h, left: 10.w), // Adjust content padding
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
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
                               authenticator();
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(150.w, 40.h),
                          backgroundColor: const Color(0xff3F5FF2),
                        ),
                        child: Text(
                          "Done",
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
