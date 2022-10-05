import 'package:dealersapp/screen/accSetup9.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Widgets/signUpbutton.dart';

class VerifiedPhoneNumber extends StatelessWidget {
  static String id = 'VerifiedPhoneNumber';
  const VerifiedPhoneNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF5EE),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            children: [
              SizedBox(height: 112.h,),
              Container(
                height: 367.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/Enter OTP-bro 1.png'), fit: BoxFit.fill)
                ),
              ),
              SizedBox(height: 45.h,),
              Text('Your phone number has been verified',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF1D221B),
                  fontWeight:FontWeight.w600 ,
                  fontSize: 24.sp,
                ),),
              SizedBox(height: 90.h,),
              SignUp_button(color: const Color(0xFF85B870), title: 'Continue', textcolor: const Color(0xFFFCFDFC), onTap: (){
                Navigator.pushNamed(context, AccSetup9.id);
              },),

            ],
          ),
        ),
      ),
    );
  }
}
