import 'package:dealersapp/screen/dealerWalletFlow/account/accVerification.dart';
import 'package:dealersapp/screen/dealerWalletFlow/account/changePassword.dart';
import 'package:dealersapp/screen/dealerWalletFlow/account/changePin.dart';
import 'package:dealersapp/screen/dealerWalletFlow/account/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/reuseableAccWidget.dart';
import '../../../widgets/reuseableAccWidgets1.dart';


class Account extends StatelessWidget {
  static String id = 'Account';
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    customDialog(BuildContext context){
      return showDialog(context: context, builder: (context){
        return AlertDialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Container(
            height: 196.h ,
            width:288.w ,
            decoration: BoxDecoration(
                color: const Color(0xFFE1EDDB),
                borderRadius: BorderRadius.circular(8.r)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 16.h,),
                Center(
                  child: Text('You are about to Log out',
                    style: TextStyle(
                      color: const Color(0xFF1D221B),
                      fontWeight:FontWeight.w600 ,
                      fontSize: 16.sp,
                    ),),
                ),
                SizedBox(height: 24.h,),
                Container(
                  width: 98.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                      color: const Color(0xFF85B870),
                      borderRadius: BorderRadius.circular(4.r)
                  ),
                  child: Center(
                    child: Text('Yes',style: TextStyle(
                      color: const Color(0xFFFCFDFC),
                      fontWeight:FontWeight.w600 ,
                      fontSize: 16.sp,
                    ),),
                  ),
                ),
                SizedBox(height: 16.h,),
                GestureDetector(
                  onTap: (){Navigator.pop(context);},
                  child: Container(
                    width: 98.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                        color: const Color(0xFFEFF5ED),
                        borderRadius: BorderRadius.circular(4.r)
                    ),
                    child: Center(
                      child: Text('No',style: TextStyle(
                        color: const Color(0xFF1D221B),
                        fontWeight:FontWeight.w600 ,
                        fontSize: 16.sp,
                      ),),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      });
    }
    return Scaffold(
      backgroundColor: const Color(0xFFEFF5ED),
      body: ListView(children: [Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 32.h,),
            Center(
              child: Text('Account',
                style: TextStyle(
                    color: const Color(0xFF1D221B),
                    fontWeight: FontWeight.w600,
                    fontSize: 24.sp
                ),),
            ),
            SizedBox(height: 44.h,),
            ReuseableAccWidget(header: 'PROFILE',body1: 'Profile',body2: 'Verification',imageUrl1: 'images/profile-circle.png',imageUrl2:'images/verify.png' ,onTap: (){Navigator.pushNamed(context, Profile.id);},onTap1: (){Navigator.pushNamed(context, AccVerification.id);},),
            SizedBox(height: 32.h,),
            ReuseableAccWidget(header: 'SECURITY', body1: 'Change Password', body2: 'Change Pin', imageUrl1:'images/lock.png', imageUrl2: 'images/lock1.png', onTap: (){Navigator.pushNamed(context, ChangePassword.id);},onTap1: (){Navigator.pushNamed(context, ChangePin.id);},),
            SizedBox(height: 72.h,),
            ReuseableAccWidget1(body1:'Customer Support',body2:'Log out',imageUrl2: 'images/logout.png',imageUrl1: 'images/people.png',onTap1: (){customDialog(context);},),
            SizedBox(height: 18.h,),
            Center(
              child: Text('v0.0.1',
                style: TextStyle(
                    color: const Color(0xFFA5A7A4),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp
                ),),
            ),
            SizedBox(height: 18.h,),



          ],
        ),
      )]),
    );
  }
}
