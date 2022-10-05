import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/passwordTextField.dart';
import '../../../widgets/signUpButton.dart';

class ChangePin extends StatelessWidget {
  static String id = 'ChangePin';
  const ChangePin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF5ED),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            children: [
              SizedBox(height: 32.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  GestureDetector(
                      onTap: (){Navigator.pop(context);},
                      child: const ImageIcon(AssetImage('images/arrow-left.png'),color: Color(0xFF609C47),)),
                  Text('Change Pin',
                    style: TextStyle(
                        color: const Color(0xFF1D221B),
                        fontWeight: FontWeight.w600,
                        fontSize: 24.sp
                    ),),
                  Icon(Icons.arrow_back, color: Colors.transparent,size: 30.sp,),

                ],),
              SizedBox(height: 54.h,),
              passwordTextFeild(title: 'Old Pin'),
              SizedBox(height: 28.h,),
              passwordTextFeild(title: 'New pin'),
              SizedBox(height: 315.h,),
              SignUp_button(color: const Color(0xFFE8E9E8), title: 'Update', textcolor: const Color(0xFFA5A7A4))

            ],
          ),
        ),
      ),
    );
  }
}
