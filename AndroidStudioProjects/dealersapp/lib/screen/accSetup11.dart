import 'package:dealersapp/screen/password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../Widgets/signUpbutton.dart';
import '../widgets/emptyTextFeild.dart';
import '../widgets/locationPicker.dart';

class AccSetup11 extends StatelessWidget {
  static String id = 'AccSetup11';
  const AccSetup11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF5ED),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){Navigator.pop(context);},
                        child: SizedBox(
                          height: 32.h,
                          width: 32.w,
                          child: const Center(
                            child: ImageIcon(AssetImage('images/arrow-left.png'),color: Color(0xFF609C47),),
                          ),
                        ),
                      ),
                      SizedBox(width: 108.w,),
                      CircularPercentIndicator(
                        animation: true,
                        radius: 32.r,
                        backgroundColor: const Color(0xFFE2EDDB),
                        percent: 0.30,
                        progressColor: const Color(0xFF609C47),
                        circularStrokeCap: CircularStrokeCap.round,
                        center: const Text('45%',style: TextStyle(
                          color: Color(0xFF1D221B),
                          fontWeight:FontWeight.w400 ,
                          fontSize: 14,
                        ),),


                      )


                    ],
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text('Fill in payment information',
                    style: TextStyle(
                        color: const Color(0xFF1D221B),
                        fontWeight: FontWeight.w600,
                        fontSize: 24.sp
                    ),),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text('Enter your full name so we can get to know you.',
                    style: TextStyle(
                        color: const Color(0xFF1D221B),
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp
                    ),),
                  SizedBox(
                    height: 34.h,
                  ),
                  LocationPicker(hintText: 'GTBank', title: 'Select Your Bank'),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text('Bank Account Number',
                    style: TextStyle(
                        color: const Color(0xFF1D221B),
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp
                    ),),
                  SizedBox(
                    height: 5.h,
                  ),
                  EmptyTextFeild(),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text('Name on Account',
                    style: TextStyle(
                        color: const Color(0xFF1D221B),
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp
                    ),),
                  SizedBox(
                    height: 5.h,
                  ),
                  EmptyTextFeild()
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.h,vertical: 26.h),
                  height: 96.h,
                  width: double.infinity,
                  color: const Color(0xFFFCFDFC),
                  child: SignUp_button(color: const Color(0xFF85B870),onTap: (){
                    Navigator.pushNamed(context, PassWordScreen.id);
                  }, title: 'Next', textcolor: const Color(0xFFEFF5ED)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}