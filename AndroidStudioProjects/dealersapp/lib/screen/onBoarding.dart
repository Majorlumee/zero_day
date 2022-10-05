import 'package:dealersapp/screen/signUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Widgets/signUpbutton.dart';


class OnBoarding extends StatelessWidget {
  static String id = 'onBoarding';
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF5EE),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              SizedBox(height: 24.h,),
              Text('Welcome to Cargodealer',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: const Color(0xFF777B76),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400
                    )

                ),),
              SizedBox(height: 8.h,),
              Text('Earn money by picking up and delivering packages.',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: const Color(0xFF1D221B),
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w600
                    )

                ),),
              SizedBox(height: 40.h,),
              Container(
                height: 340.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/Messenger-bro 2.png'),
                  fit: BoxFit.fill)
                ),
              ),
              SizedBox(height: 41.h,),
              SignUp_button(color: const Color(0xFF85B870), textcolor: const Color(0xFFFCFDFC), title: 'Sign Up',onTap: (){
                Navigator.pushNamed(context, SignUpScreen.id);
              }),
              SizedBox(height: 10.h,),
              SignUp_button(color: const Color(0xFFE1EDDB), textcolor: const Color(0xFF1D221B), title: 'Login',onTap: (){},),




            ],
          ),
        ),
      ),
    );
  }
}








