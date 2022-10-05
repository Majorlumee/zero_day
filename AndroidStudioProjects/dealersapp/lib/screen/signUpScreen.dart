import 'package:dealersapp/screen/emailSignUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../Widgets/signUpbutton.dart';
import 'package:dealersapp/widgets/selectUser.dart';


class SignUpScreen extends StatefulWidget {

  static String id = 'SignUpPage';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF5EE),
      body: SafeArea(
        child: Padding(
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
                      child:
                      const Center(
                        child:
                        ImageIcon(AssetImage('images/arrow-left.png'),color: Color(0xFF609C47),),
                      ),
                    ),
                  ),
                  SizedBox(width: 108.w,),
                  CircularPercentIndicator(
                    animation: true,
                    radius: 32.r,
                    backgroundColor: const Color(0xFFE2EDDB),
                    percent: 0.15,
                    progressColor: const Color(0xFF609C47),
                    circularStrokeCap: CircularStrokeCap.round,
                    center:  Text('15%',style: TextStyle(
                      color: const Color(0xFF1D221B),
                      fontWeight:FontWeight.w400 ,
                      fontSize: 14.sp,
                    ),),


                  )


                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              Text('Let’s get started',style: TextStyle(
                color: const Color(0xFF777B76),
                fontWeight:FontWeight.w400 ,
                fontSize: 16.sp,
              ),),
              SizedBox(
                height: 8.h,
              ),
              Text('Are you an Individual or Corporate?',
                textAlign: TextAlign.start,
                style: TextStyle(
                color: const Color(0xFF1D221B),
                fontWeight:FontWeight.w600 ,
                fontSize: 26.sp,
              ),),
              SizedBox(
                height: 72.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SelectUser(imageUrl: 'images/Personal data-bro 1.png',title:'Individual',index: 1,selectedIndex: selectedIndex,onTap: (){
                    setState(() {
                      selectedIndex = 1;
                    });
                  },),
                  SelectUser(imageUrl:'images/At work-bro 1.png',title: 'Corporate',index: 2,selectedIndex: selectedIndex,onTap: (){
                    setState(() {
                      selectedIndex = 2;
                    });
                  },)

                ],
              ),
              SizedBox(
                height: 190.h,
              ),
              SignUp_button(textcolor: selectedIndex ==0 ?const Color(0xFFA5A7A4):const Color(0xFFFCFDFC), title: 'Next', color: selectedIndex == 0 ?const Color(0xFFE8E9E8): const Color(0xFF85B870),onTap: (){
                if(selectedIndex == 0){
                }
                else if(selectedIndex == 1){

                }
                else{
                  Navigator.pushNamed(context, EmailSignUP.id);
                }})

            ],
          ),
        ),
      ) ,
    );
  }
}

