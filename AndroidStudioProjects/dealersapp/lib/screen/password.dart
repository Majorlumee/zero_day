import 'package:dealersapp/screen/passwordCreated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../Widgets/signUpbutton.dart';
import '../widgets/passwordTextField.dart';

class PassWordScreen extends StatefulWidget {
  static String id = 'PasswordScreen';
  const PassWordScreen({Key? key}) : super(key: key);

  @override
  State<PassWordScreen> createState() => _PassWordScreenState();

}

class _PassWordScreenState extends State<PassWordScreen> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassowrdController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordController.addListener(() {
      setState(() {

      });
    });
    confirmPassowrdController.addListener(() {
      setState(() {

      });
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    passwordController.removeListener(() { });
    confirmPassowrdController.removeListener(() { });
  }
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
                  SizedBox(
                    height: 32.h,
                    width: 32.w,
                    child: const Center(
                      child: ImageIcon(AssetImage('images/arrow-left.png'),color: Color(0xFF609C47),),
                    ),
                  ),
                  SizedBox(width: 108.w,),
                  CircularPercentIndicator(
                    animation: true,
                    radius: 32.r,
                    backgroundColor: const Color(0xFFE2EDDB),
                    percent: 0.9,
                    progressColor: const Color(0xFF609C47),
                    circularStrokeCap: CircularStrokeCap.round,
                    center:  Text('90%',style: TextStyle(
                      color: const Color(0xFF1D221B),
                      fontWeight:FontWeight.w400 ,
                      fontSize: 14.sp,
                    ),),


                  )

                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Text('Create Password',style: TextStyle(
                color: const Color(0xFF1D221B),
                fontWeight:FontWeight.w600 ,
                fontSize: 24.sp,
              ),),
              SizedBox(
                height: 8.h,
              ),
              Text('Enter a secure password you’ll use to log in.',style: TextStyle(
                color: const Color(0xFF777B76),
                fontWeight:FontWeight.w400 ,
                fontSize: 12.sp,
              ),),
              SizedBox(
                height: 26.h,
              ),
              passwordTextFeild(title: 'Password',controller: passwordController,),
              SizedBox(
                height: 20.h,
              ),
              passwordTextFeild(title: 'Confirm Password',controller: confirmPassowrdController,),
              Expanded(
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SignUp_button(color: passwordController.text == '' || confirmPassowrdController.text == ''? const Color(0XFFE8E9E8):const Color(0xFF85B870), title: 'Next', textcolor: passwordController.text == '' || confirmPassowrdController == ''?const Color(0XFFA5A7A4):const Color(0xFFFCFDFC), onTap:
                        (){
                      Navigator.pushNamed(context, PasswordCreatedScreen.id);
                    FocusScope.of(context).unfocus();},)),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ) ,
      ),
    );
  }
}
