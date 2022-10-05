import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widgets/signUpbutton.dart';
import '../widgets/bottombar.dart';

class PasswordCreatedScreen extends StatelessWidget {
  static String id = 'passwordCreated';
  const PasswordCreatedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFFEFF5EE) ,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 112.h,),
              Container(
                height: 367.h,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/My password-bro 1.png'), fit: BoxFit.fill)
                ),
              ),
              SizedBox(height: 24.h,),
              Text('You’ve successfully set up your password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF1D221B),
                  fontWeight:FontWeight.w600 ,
                  fontSize: 24.sp,
                ),),
              SizedBox(height: 112.h,),
              SignUp_button(color: const Color(0xFF85B870), title: 'Continue', textcolor: const Color(0xFFFCFDFC), onTap: (){
                Navigator.pushNamed(context, BottomBar.id);
              },)

            ],
          ),
        ),
      ),
    );
  }
}
