import 'package:adrox/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/images.dart';
import 'disablescreen.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {

  final verifyController = TextEditingController();
  void disableScreen(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const DisableScreen(),));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: SizedBox(
            height: 660.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
                  child: Row(children: [
                    Container(
                      height: 50.h,width: 50.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Colors.white),
                      child: IconButton(onPressed: () => Navigator.pop(context),icon:Icon(Icons.keyboard_backspace_rounded)),
                    ),
                    SizedBox(width: 70.w,),
                    Text("Verify 2FA",style: TextStyle(color: Colors.black, fontFamily: "Roboto-medium", fontSize: 18.sp,
                    ),),
                  ],),
                ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:30.h,vertical:60.h),
                child: Image.asset(AstImg.verify),
              ),
                SizedBox(height: 5.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40.w,vertical: 20.h),
                  width: double.infinity.w,height: 200.h,decoration: BoxDecoration(
                  color: Colors.white,borderRadius: BorderRadius.circular(15.r)
                ),child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("2FA Verifcation",style: TextStyle(color: Colors.black, fontFamily: "Roboto-medium", fontSize: 20.sp,
                  ),),
                  Text(StringValues.verify2fa,style: TextStyle(color: Colors.black45, fontFamily: "Roboto-regular", fontSize: 12.sp,
                  ),textAlign: TextAlign.center,),
                    TextField(
                      cursorColor: Colors.transparent,
                      controller: verifyController,
                      decoration: InputDecoration(
                        suffixIcon: Image.asset(AstImg.copyImg),
                          hintText: "Enter 2fa code",
                          hintStyle: TextStyle(
                            color: Colors.black38, fontFamily: "Roboto-regular", fontSize: 14.sp,
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 20.w),
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
                ],),),
              ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                         disableScreen();
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(300.w, 40.h),
                    backgroundColor: const Color(0xff3F5FF2),
                  ),
                  child: Text(
                    "Next Step",
                    style: TextStyle(
                      fontFamily: "Roboto-regular",
                      fontSize: 16.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20.h,)
            ],),
          ),
        ),
      ),
    );
  }
}
