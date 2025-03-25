import 'package:adrox/screens/Landing/LendingMenu/lendingscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/images.dart';
import '../../utils/text.dart';

class DisableScreen extends StatefulWidget {
  const DisableScreen({super.key});

  @override
  State<DisableScreen> createState() => _DisableScreenState();
}

class _DisableScreenState extends State<DisableScreen> {

  final verifyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          leading: Padding(
            padding:  EdgeInsets.only(left: 10.w),
            child: Container(
              height: 30,width: 30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.r),color: Colors.white),
              child: IconButton(onPressed: () => Navigator.pop(context),icon:Icon(Icons.arrow_back)),
            ),
          ),
          centerTitle: true,
          title: Text("Disable 2FA",style: TextStyle(color: Colors.black, fontFamily: "Roboto-normal", fontSize: 18.sp,
          ),),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: 610.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:30.h,vertical:60.h),
                  child: Image.asset(AstImg.verify),
                ),
                SizedBox(height: 25.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40.w,vertical: 20.h),
                    width: double.infinity.w,height: 200.h,decoration: BoxDecoration(
                      color: Colors.white,borderRadius: BorderRadius.circular(15.r)
                  ),child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Disable 2FA Verifcation",style: TextStyle(color: Colors.black, fontFamily: "Roboto-normal", fontSize: 20.sp,
                      ),),
                      Text(StringValues.verify2fa,style: TextStyle(color: Colors.black45, fontFamily: "Roboto-lite", fontSize: 12.sp,
                      ),),
                      TextField(
                        cursorColor: Colors.transparent,
                        controller: verifyController,
                        decoration: InputDecoration(
                            suffixIcon: Image.asset(AstImg.copyImg),
                            hintText: "Enter 2fa code",
                            hintStyle: TextStyle(
                              color: Colors.black45, fontFamily: "Roboto-lite", fontSize: 14.sp,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LendingScreen(),));
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(300.w, 40.h),
                    backgroundColor: const Color(0xffE46364),
                  ),
                  child: Text(
                    "Deactivate 2fa",
                    style: TextStyle(
                      fontFamily: "Roboto-normal",
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
