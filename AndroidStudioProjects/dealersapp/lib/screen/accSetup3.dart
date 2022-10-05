import 'package:dealersapp/screen/verifiedPhoneNumber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../Widgets/signUpbutton.dart';
import 'otpForm.dart';

class AccSetup3 extends StatefulWidget {
  static String id = 'Accsetup3';
  const AccSetup3({Key? key}) : super(key: key);

  @override
  State<AccSetup3> createState() => _AccSetup3State();
}

class _AccSetup3State extends State<AccSetup3> {
  int index = 0;
  OtpFieldController otpFieldController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF5EE),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
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
                    percent: 0.75,
                    progressColor: const Color(0xFF609C47),
                    circularStrokeCap: CircularStrokeCap.round,
                    center:  Text('75%',style: TextStyle(
                      color: const Color(0xFF1D221B),
                      fontWeight:FontWeight.w400 ,
                      fontSize: 14.sp,
                    ),),


                  )

                ],
              ),
              SizedBox(
                height: 14.h,
              ),
              Text('Verify your phone number',style: TextStyle(
                color: const Color(0xFF1D221B),
                fontWeight:FontWeight.w600 ,
                fontSize: 24.sp,
              ),),
              SizedBox(
                height: 8.h,
              ),
              Text('Enter the code we sent to +234 907930026',style: TextStyle(
                color: const Color(0xFF777B76),
                fontWeight:FontWeight.w400 ,
                fontSize: 12.sp,
              ),),
              SizedBox(
                height: 24.h,
              ),
              OtpForm(otpFieldController:otpFieldController,onCompleted: (value){
                setState(() {
                  index = 1;
                  print(index);
                });

              },),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SignUp_button(color: index == 0 ?const Color(0xFFE8E9E8):const Color(0xFF85B870), title: 'Next', textcolor:index == 0? const Color(0xFFA5A7A4):const Color(0xFFFCFDFC), onTap: (){
                    Navigator.pushNamed(context, VerifiedPhoneNumber.id);
                  }),
                ),
              ),
              SizedBox(height: 30.h,)
            ],),
        ),

      ) ,);
  }
}
