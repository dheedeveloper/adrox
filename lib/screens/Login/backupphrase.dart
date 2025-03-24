import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/images.dart';
import '../../utils/text.dart';
import 'confirmbackup.dart';

class BackupPhrase extends StatefulWidget {
  const BackupPhrase({super.key});

  @override
  State<BackupPhrase> createState() => _BackupPhraseState();
}

class _BackupPhraseState extends State<BackupPhrase> {

  void confirmBackup(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const ConfirmBackup()));
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
                    "Backup Phrase",
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
                  SizedBox(
                    height: 200.h, // Fixed height
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(), // Prevent scrolling
                      itemCount: 10, // 6 rows x 2 columns
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // 2 columns
                        mainAxisSpacing: 5.h, // Adjust spacing between rows
                        crossAxisSpacing: 5.w, // Adjust spacing between columns
                        childAspectRatio: 120.w / 30.h, // Adjust aspect ratio for better fit
                      ),
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(color: Colors.black45),
                        ),
                        child: Center(
                          child: Text("${index+1}. letter",style: TextStyle(
                              color: Colors.black54,
                              fontFamily: "Roboto-lite",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400
                          ),),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: (){

                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(100.w, 40.h),
                          shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xff3F5FF2)),borderRadius:
                          BorderRadius.circular(20.r)),
                          backgroundColor: Colors.white,
                        ),
                        child: Text(
                          "Copy",
                          style: TextStyle(
                            fontFamily: "Roboto-normal",
                            fontSize: 16.sp,
                            color: Color(0xff3F5FF2),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                              confirmBackup();
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
