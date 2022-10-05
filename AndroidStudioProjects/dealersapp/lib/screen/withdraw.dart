import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Widgets/signUpbutton.dart';
import '../widgets/emptyTextFeild.dart';
import '../widgets/locationPicker.dart';

class Withdraw extends StatelessWidget {
  static String id = 'Withdraw';
  const Withdraw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF5ED),
      body: SingleChildScrollView(
        child: SafeArea(
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
                        child: const ImageIcon(AssetImage('images/arrow-left.png'),color: Color(0xFF609C47),)),
                    Text('Withdraw',
                      style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight: FontWeight.w600,
                          fontSize: 24.sp
                      ),),
                    Icon(Icons.arrow_back, color: Colors.transparent,size: 30.sp,),

                  ],),
                SizedBox(height: 28.h,),
                Center(
                  child: Text('Note: Making a withdrawal during the week adds a\nbreaking fee of 2.5% of your withdrawal amount.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: const Color(0xFF1D221B),
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp
                    ),),
                ),
                SizedBox(height: 16.h,),
                Center(
                  child: Container(
                    height: 37.h,
                    width: 169.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        color: const Color(0xFFE1EDDB)
                    ),
                    child:Center(
                      child: Text('#5,000',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: const Color(0xFF1D221B),
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp
                        ),),
                    ) ,
                  ),
                ),
                SizedBox(height: 34.h,),
                Text('Amount to withdraw',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: const Color(0xFF1D221B),
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp
                  ),),
                SizedBox(height: 5.h,),
                EmptyTextFeild(hintext: 'Eg. ₦3000',),
                SizedBox(height: 20.h,),
                LocationPicker(hintText: 'GTBank', title: 'Select Your Bank'),
                SizedBox(height: 20.h,),
                Text('Bank Account Number',
                  style: TextStyle(
                      color: const Color(0xFF1D221B),
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp
                  ),),
                SizedBox(height: 5.h,),
                EmptyTextFeild(hintext: '1239857383',),
                SizedBox(height: 20.h,),
                Text('Name on Account',
                  style: TextStyle(
                      color: const Color(0xFF1D221B),
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp
                  ),),
                SizedBox(height: 5.h,),
                EmptyTextFeild(),
                SizedBox(height: 20.h,),
                Text('Add a note',
                  style: TextStyle(
                      color: const Color(0xFF1D221B),
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp
                  ),),
                SizedBox(height: 5.h,),
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 99.h,left: 20.h,right: 15.h),
                      hintText: 'Say thank you to Cargodealer.',
                      hintStyle: TextStyle(
                          fontSize: 12.sp ,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF777B76)
                      ),
                      filled: true,
                      fillColor: const Color(0xFFFCFDFC),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.r)),
                          borderSide: BorderSide(color: const Color(0xFFC2DCB7), width: 2.w)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.r)),
                          borderSide: BorderSide(color: const Color(0xFFFCFDFC), width: 2.w)
                      )
                  ),
                ),
                SizedBox(height: 90.h,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.h,vertical: 26.h),
                  height: 96.h,
                  width: double.infinity,
                  color: const Color(0xFFFCFDFC),
                  child: SignUp_button(color: const Color(0xFF85B870), title: 'Next', textcolor: const Color(0xFFEFF5ED)),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
