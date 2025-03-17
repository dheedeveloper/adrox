import 'package:adrox/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/images.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {

  final verifyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding:  EdgeInsets.only(left: 10.w),
          child: Container(
            height: 10.w,width: 50.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.r),color: Colors.blue),
            child: Icon(Icons.arrow_back),
          ),
        ),
        centerTitle: true,
        title: Text("Verify 2FA",style: TextStyle(color: Colors.black, fontFamily: "Roboto-normal", fontSize: 18.sp,
        ),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal:30.h,vertical:60.h),
          child: Image.asset(AssetImages.verify),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40.w,vertical: 20.h),
            width: double.infinity.w,height: 200.h,decoration: BoxDecoration(
            color: Colors.blue,borderRadius: BorderRadius.circular(15.r)
          ),child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("2FA Verifcation",style: TextStyle(color: Colors.black, fontFamily: "Roboto-normal", fontSize: 20.sp,
            ),),
            Text(StringValues.verify2fa,style: TextStyle(color: Colors.black45, fontFamily: "Roboto-lite", fontSize: 14.sp,
            ),),
              TextField(
                cursorColor: Colors.transparent,
                controller: verifyController,
                decoration: InputDecoration(
                    hintText: "      Enter 2fa code",
                    hintStyle: TextStyle(
                      color: Colors.black45, fontFamily: "Roboto-lite", fontSize: 14.sp,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 15.h),
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
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: Size(300.w, 40.h),
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
      ],),
    );
  }
}
