import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Widgets/customTextField.dart';
import '../../../Widgets/signUpbutton.dart';


class EditProfile extends StatelessWidget {
  static String id = 'Edit profile';
  const EditProfile({Key? key}) : super(key: key);

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
              SizedBox(height: 32.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  GestureDetector(
                      onTap: (){Navigator.pop(context);},
                      child:  const ImageIcon(AssetImage('images/arrow-left.png'),color: Color(0xFF609C47),)),
                  Text('Edit Profile',
                    style: TextStyle(
                        color: const Color(0xFF1D221B),
                        fontWeight: FontWeight.w600,
                        fontSize: 24.sp
                    ),),
                  Icon(Icons.arrow_back, color: Colors.transparent,size: 30.sp,),

                ],),
              SizedBox(height: 32.h,),
              CustomTextFeild(hinttext: 'Kasham', title: 'First name'),
              SizedBox(height: 28.h,),
              CustomTextFeild(hinttext: 'Ismaila', title: 'Last name'),
              SizedBox(height: 28.h,),
              CustomTextFeild(hinttext: 'kashamismaila01@gmail.com', title: 'Email Address'),
              SizedBox(height: 28.h,),
              CustomTextFeild(hinttext: '08179500285', title: 'Phone Number'),
              SizedBox(height: 115.h,),
              SignUp_button(color: const Color(0xFF85B870), title: 'Update', textcolor: const Color(0xFFFCFDFC))


            ],
          ),
        ),
      ),
    );
  }
}