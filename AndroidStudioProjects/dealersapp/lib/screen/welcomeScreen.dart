import 'package:dealersapp/screen/accSetup8.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Widgets/signUpbutton.dart';


class WelcomeScreen extends StatelessWidget {
  static String id = 'Welcome Screen';
  const WelcomeScreen({Key? key}) : super(key: key);

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
                    image: DecorationImage(image: AssetImage('images/High five-bro 1.png'))
                ),
              ),
              SizedBox(height: 24.h,),
              Center(
                child: Text('Welcome to Cargodealer',style: TextStyle(
                  color: const Color(0xFF1D221B),
                  fontWeight:FontWeight.w600 ,
                  fontSize: 24.sp,
                ),),
              ),
              SizedBox(height: 8.h,),
              Center(
                child: Text('We help you ship your cargo better.',style: TextStyle(
                  color: const Color(0xFF777B76),
                  fontWeight:FontWeight.w600 ,
                  fontSize: 12.sp,
                ),),
              ),
              SizedBox(height: 110.h,),
              SignUp_button(color: const Color(0xFF85B870), title: 'Continue', textcolor: const Color(0xFFFCFDFC), onTap: (){
                Navigator.pushNamed(context, AccSetup8.id);
              },)

            ],
          ),
        ),
      ),
    );
  }
}
