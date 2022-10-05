import 'package:dealersapp/screen/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widgets/signUpbutton.dart';

class ConfirmationScreen extends StatelessWidget {
  static String id = 'confirmationEmail';
  const ConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF5ED),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.h,),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){Navigator.pop(context);},
                    child: const ImageIcon(AssetImage('images/arrow-left.png'),color: Color(0xFF609C47),),
                  )
                ],
              ),
              SizedBox(height: 64.h,),
              Container(
                height: 367.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/Inbox cleanup-bro 1.png'), fit: BoxFit.fill)
                ),
              ),
              SizedBox(height: 24.h,),
              Center(
                child: Text('Confirm your email',style: TextStyle(
                  color: const Color(0xFF1D221B),
                  fontWeight:FontWeight.w600 ,
                  fontSize: 24.sp,
                ),),
              ),
              SizedBox(height: 8.h,),
              Center(
                child: Text('We just sent an email to WadeWarren@gmail.com',style: TextStyle(
                  color: const Color(0xFF777B76),
                  fontWeight:FontWeight.w400 ,
                  fontSize: 14.sp,
                ),),
              ),
              SizedBox(height: 46.h,),
              SignUp_button(color: const Color(0xFF85B870), title: 'Open email app', textcolor: const Color(0xFFFCFDFC), onTap: (){
              Navigator.pushNamed(context, WelcomeScreen.id);},),
              SizedBox(height: 16.h,),
              SignUp_button(color: const Color(0xFFE1EDDB), title:'I didn’t recieve my email' , textcolor: const Color(0xFF1D221B))



            ],
          ),
        ),
      ),
    );
  }
}
