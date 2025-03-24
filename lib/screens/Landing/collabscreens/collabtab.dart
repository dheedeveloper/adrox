import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CollabScreen extends StatefulWidget {
  const CollabScreen({super.key});

  @override
  State<CollabScreen> createState() => _CollabScreenState();
}

class _CollabScreenState extends State<CollabScreen> {
  String selectedValue = "Last Month";

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(leading: IconButton(icon: Icon(Icons.keyboard_backspace_rounded), onPressed: () {
        Navigator.pop(context);
      },),
        title: Text("Collab",style: TextStyle(color: Colors.black, fontFamily: "Roboto-normal", fontSize: 16.sp,)),),
      body: Container(
        height: double.infinity,width: double.infinity.w,padding: EdgeInsets.all(20.h),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20.h),
              height: 110.h,width: double.infinity,decoration: BoxDecoration(color: const Color(
                0xffd7d7ec),
                borderRadius: BorderRadius.circular(15.w)),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total Rank Reward",style: TextStyle(color: Colors.black54, fontFamily: "Roboto-normal", fontSize: 12.sp,)),
                      Text("1300 ",style: TextStyle(color: Color(0xff41418E), fontFamily: "Roboto-normal", fontSize: 18.sp,)),
                    ],),
                  SizedBox(width: 25.w,),
                  VerticalDivider(indent: 15.h,endIndent: 15.h,),
                  SizedBox(width: 20.w,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Current Pool Match",style: TextStyle(color: Colors.black54, fontFamily: "Roboto-normal", fontSize: 12.sp,)),
                      Text("100 ADX",style: TextStyle(color: Color(0xff41418E), fontFamily: "Roboto-normal", fontSize: 18.sp,)),
                    ],),
                ],
              ),),
            SizedBox(height: 20.h,),
            Row(
              children: [
                Text("History",style: TextStyle(color: Colors.black, fontFamily: "Roboto-normal", fontSize: 15.sp,)),
                Spacer(),
                SizedBox(height: 30.h,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.r), // Border radius
                      border: Border.all(color: Colors.grey),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: DropdownButton<String>(
                          borderRadius: BorderRadius.all(Radius.circular(15.r)),
                          value: selectedValue,
                          style: TextStyle(color: Colors.black, fontFamily: "Roboto-normal", fontSize: 13.sp,),
                          items: [
                            DropdownMenuItem(
                              value: "Last Month",
                              child: Text("Last Month",
                                  style: TextStyle(color: Colors.black, fontFamily: "Roboto-normal", fontSize: 13.sp,)),
                            ),
                            DropdownMenuItem(
                              value: "Last Year",
                              child: Text("Last Year",
                                  style: TextStyle(color: Colors.black, fontFamily: "Roboto-normal", fontSize: 13.sp,)),
                            ),
                          ],
                          onChanged: (newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),            SizedBox(height: 15.h,),
            Text("Today",style: TextStyle(color: Colors.black54, fontFamily: "Roboto-normal", fontSize: 12.sp,)),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 15.h),
                    height: 180.h,width: double.infinity,decoration: BoxDecoration(border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.circular(15.w)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                height: 40.h,width: 40.h,decoration: BoxDecoration(color: Colors.lightGreen.shade50,
                                borderRadius: BorderRadius.circular(10.r)),
                                child: Icon(Icons.arrow_downward_rounded,color: Colors.green.shade600,)),
                            SizedBox(width: 16.w,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("50 ADX",style: TextStyle(color: Colors.black, fontFamily: "Roboto-normal", fontSize: 14.sp,)),
                                Text("Executive",style: TextStyle(color: Colors.black, fontFamily: "Roboto-normal", fontSize: 10.sp,)),
                              ],),
                            Spacer(),
                            Text("11.30Am",style: TextStyle(color: Colors.black54, fontFamily: "Roboto-normal", fontSize: 12.sp,)),
                          ],),
                        SizedBox(height: 7.h,),
                        Divider(),
                        SizedBox(height: 7.h,),
                        Text("1000 Pool Matching",style: TextStyle(color: Colors.black, fontFamily: "Roboto-normal", fontSize: 16.sp,)),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "End on   ", // Top text with smaller font size
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Roboto-normal",
                                  fontSize: 13.sp, // Smaller font size
                                ),
                              ),
                              TextSpan(
                                text: "11.30Am | 20 Apr 2025", // Bottom text with larger font size
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Roboto-normal",
                                  fontSize: 13.sp, // Larger font size
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],),),
                ),
              ),
            )
          ],),
      ),
    ));
  }
}
