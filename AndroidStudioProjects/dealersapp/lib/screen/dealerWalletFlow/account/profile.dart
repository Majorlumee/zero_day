import 'package:dealersapp/screen/dealerWalletFlow/account/editProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Widgets/signUpbutton.dart';

class Profile extends StatelessWidget {
  static String id = 'Profile';
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF5ED),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  GestureDetector(
                      onTap: (){Navigator.pop(context);},
                      child: const ImageIcon(AssetImage('images/arrow-left.png'),color: Color(0xFF609C47),)),
                  Text('Profile',
                    style: TextStyle(
                        color: const Color(0xFF1D221B),
                        fontWeight: FontWeight.w600,
                        fontSize: 24.sp
                    ),),
                  Icon(Icons.arrow_back, color: Colors.transparent,size: 30.sp,),

                ],),
              SizedBox(height: 44.h,),
              Container(
                width: double.infinity,
                height: 313.h,
                decoration: BoxDecoration(
                    color: const Color(0xFFFCFDFC) ,
                    borderRadius: BorderRadius.circular(16.r)
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('First Name',
                            style: TextStyle(
                                color: const Color(0xFF4A4E49),
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp
                            ),),
                          Text('Jeremiah',
                            style: TextStyle(
                                color: const Color(0xFFA5A7A4),
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp
                            ),)
                        ],
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Last Name',
                            style: TextStyle(
                                color: const Color(0xFF4A4E49),
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp
                            ),),
                          Text('Nehemiah',
                            style: TextStyle(
                                color: const Color(0xFFA5A7A4),
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp
                            ),)
                        ],
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Email Address',
                            style: TextStyle(
                                color: const Color(0xFF4A4E49),
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp
                            ),),
                          Text('Jeremiah',
                            style: TextStyle(
                                color: const Color(0xFFA5A7A4),
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp
                            ),)
                        ],
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Phone Number',
                            style: TextStyle(
                                color: const Color(0xFF4A4E49),
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp
                            ),),
                          Text('08028947568',
                            style: TextStyle(
                                color: const Color(0xFFA5A7A4),
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp
                            ),)
                        ],
                      ),
                      const Divider(),
                      SignUp_button(color: const Color(0xFF85B870), title: 'Edit', textcolor: const Color(0xFFFCFDFC), onTap: (){Navigator.pushNamed(context, EditProfile.id);},)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
