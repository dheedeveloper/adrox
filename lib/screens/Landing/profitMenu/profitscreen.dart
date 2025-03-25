import 'package:adrox/screens/Landing/profitMenu/profitLending/lendingbonus.dart';
import 'package:adrox/screens/Landing/profitMenu/profitPool/profitpool.dart';
import 'package:adrox/screens/Landing/profitMenu/referralscreens/profitreferral.dart';
import 'package:adrox/screens/Landing/profitMenu/profiTeam/profitteam.dart';
import 'package:adrox/screens/Landing/profitMenu/profitRank/rankreward.dart';
import 'package:adrox/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'collabscreens/collabtab.dart';

class ProfitHomeTab extends StatefulWidget {
  const ProfitHomeTab({super.key});

  @override
  State<ProfitHomeTab> createState() => _ProfitHomeTabState();
}

class _ProfitHomeTabState extends State<ProfitHomeTab> {

  List contColor=[
    Color(0xffeeeef5),
    Color(0xffFFF6F6),
    Color(0xffF4FBFF),
    Color(0xffFFF9F4),
    Color(0xfff0f8f5),
    Color(0xffF6F8FF),
  ];
  List conTitle =["Lending","Rank","Team","Pool","Referral","Collab"];
  List viewColor=[
    Color(0xff3F5FF2),
    Color(0xffA73A3A),
    Color(0xff3580AB),
    Color(0xffF38F3C),
    Color(0xff29A893),
    Color(0xff415084),
  ];
  List contImgs=[
    AstImg.lendingCont,AstImg.rank,AstImg.team,AstImg.pool,AstImg.referral,AstImg.collab,
  ];

  List navigatCls = [LendingBonus(),RankReward(),ProfitTeam(),ProfitPool(),ProfitReferral(),CollabScreen()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(left: 20.w,right: 20.w,top: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Total Profit",style: TextStyle(color: Colors.black, fontFamily: "Roboto-medium", fontSize: 15.sp,)),
          Text("200 ADX",style: TextStyle(color: Colors.black, fontFamily: "Roboto-medium", fontSize: 30.sp,)),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(10.w),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 columns
                  crossAxisSpacing: 10.w, // Spacing between columns
                  mainAxisSpacing: 10.h, // Spacing between rows
                  childAspectRatio: 150.w / 230.h, // Aspect ratio for proper size
                ),
                itemCount: 6, // 2 columns × 3 rows = 6 items
                itemBuilder: (context, index) {
                  return Container(
                    height: 230.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: contColor[index],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
                          child: Row(
                            children: [
                              Image.asset(contImgs[index]),
                              SizedBox(width: 8.w),
                              Text(
                                conTitle[index],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Roboto-regular",
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18.w),
                          child: Text(
                            "Bonus",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Roboto-regular",
                              fontSize: 15.sp,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18.w),
                          child: Text(
                            "1200 ADX",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Roboto-medium",
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18.w),
                          child: Text(
                            "Lending",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Roboto-regular",
                              fontSize: 15.sp,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18.w),
                          child: Text(
                            "1200 ADX",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Roboto-medium",
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                        const Divider(color: Colors.white),
                        InkWell(
                          onTap:() => Navigator.push(context,MaterialPageRoute(builder: (context) => navigatCls[index],)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.w),
                            child: Row(
                              children: [
                                Text(
                                  "View details",
                                  style: TextStyle(
                                    color: viewColor[index],
                                    fontFamily: "Roboto-medium",
                                    fontSize: 14.sp,
                                  ),
                                ),
                                Icon(
                                  Icons.navigate_next_rounded,
                                  color: viewColor[index],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5.h),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],),
      ),
    ));
  }
}
