import 'package:adrox/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    List titles =["Whitepaper","Project","Roadmap","Ai Robotics","E-commerce","Games","Education","Support",];

    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Row(
            children: [
              Image.asset(AstImg.logo),
              const Spacer(),
              Image.asset(AstImg.setting),
              SizedBox(width: 25.w,),
              Image.asset(AstImg.notification),
              SizedBox(width: 25.w,),
              Image.asset(AstImg.scanner),
            ],
          ),
            SizedBox(height: 20.w,),
            Container(
              height: 70.h,width: double.infinity.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(
              15.r,),color: Color(0xffF4F4F6)),
            child: Row(children: [
              Image.asset(AstImg.announcement,height: 80.h,width: 80.h,),
              SizedBox(width:10.w),
              Text(StringValues.home,style: TextStyle(color: Colors.black, fontFamily: "Roboto-normal", fontSize: 12.sp,))
            ],),),
              SizedBox(height: 10.h,),
            Container(
              height: 130.h,width: double.infinity.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(
              20.r,),image: DecorationImage(image: AssetImage("assets/images/dummy.png"),fit: BoxFit.fitHeight)),
            ),
              SizedBox(height: 10.h,),
            Text("Details",style: TextStyle(color: Colors.black, fontFamily: "Roboto-normal", fontSize: 15.sp,)),
              SizedBox(
                height: 230.h,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(10.w),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, // 2 columns
                    crossAxisSpacing: 10.w, // Spacing between columns
                    mainAxisSpacing: 10.h, // Spacing between rows
                    childAspectRatio: 150.w / 230.h, // Aspect ratio for proper size
                  ),
                  itemCount: 8, // 2 columns × 3 rows = 6 items
                  itemBuilder: (context, index) {
                    return Column(children: [
                      Container(
                        height: 60.h,width: 60.h,decoration: BoxDecoration(image: DecorationImage(image:
                      AssetImage(AstImg.whitePaper),fit: BoxFit.cover),border: Border.all(color: Colors.black12,),
                          borderRadius: BorderRadius.circular(15.r)),),
                      SizedBox(height: 10.h,),
                      Text(titles[index],style: TextStyle(color: Colors.black, fontFamily: "Roboto-normal", fontSize: 11.sp,)),
                    ],);
                  },
                ),
              ),
              Text("Coins",style: TextStyle(color: Colors.black, fontFamily: "Roboto-normal", fontSize: 15.sp,)),
              SizedBox(height: 10.h,),
              SizedBox(
                  height:350.h ,
                  child: ListView.builder(
                    itemExtent: 50.h,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) =>
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Image.asset(AstImg.usut,height: 30.h,width: 30.w,fit: BoxFit.fill,),
                    SizedBox(width: 20.w,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("USDT",style: TextStyle(color: Colors.black, fontFamily: "Roboto-normal", fontSize: 15.sp,)),
                      Text("2938",style: TextStyle(color: Colors.black54, fontFamily: "Roboto-normal", fontSize: 12.sp,)),
                    ],),
                    Spacer(),
                    Container(height: 25.h,width: 60.w,decoration: BoxDecoration(color: Color(0xff3ECD8B),borderRadius: BorderRadius.circular(8.r)),
                      child: Center(child: Text("+ 0.02%",style: TextStyle(color: Colors.white, fontFamily: "Roboto-normal", fontSize: 13.sp,)),),)
                  ],)))

            ],),
        ),
      ),
    ));
  }
}
