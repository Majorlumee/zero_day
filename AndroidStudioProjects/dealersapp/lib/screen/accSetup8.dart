import 'package:flutter/material.dart';
import 'package:dealersapp/widgets/customMobileTextFeild.dart';
import 'package:dealersapp/widgets/customTextField.dart';
import 'package:dealersapp/widgets/emptyTextFeild.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:dealersapp/widgets/locationPicker.dart';
import 'package:dealersapp/widgets/signUpButton.dart';

import 'accSetup3.dart';




class AccSetup8 extends StatelessWidget {
  static String id = 'AccSetup8';
  const AccSetup8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF5ED) ,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
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
                            child: const Center(
                              child: ImageIcon(AssetImage('images/arrow-left.png'),color: Color(0xFF609C47),),
                            ),
                          ),
                        ),
                        SizedBox(width: 108.w,),
                        CircularPercentIndicator(
                          animation: true,
                          radius: 32.r,
                          backgroundColor: const Color(0xFFE2EDDB),
                          percent: 0.30,
                          progressColor: const Color(0xFF609C47),
                          circularStrokeCap: CircularStrokeCap.round,
                          center: const Text('45%',style: TextStyle(
                            color: Color(0xFF1D221B),
                            fontWeight:FontWeight.w400 ,
                            fontSize: 14,
                          ),),


                        )


                      ],
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Text('Fill Shipment Details',
                      style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight: FontWeight.w600,
                          fontSize: 24.sp
                      ),),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text('Enter your full name so we can get to know you.',
                      style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp
                      ),),
                    SizedBox(
                      height: 26.h,
                    ),
                    CustomTextFeild(title: 'First Name', hinttext: 'Wade'),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomTextFeild(title: 'Last Name', hinttext: 'Warren'),
                    SizedBox(height: 20.h,),
                    Text('Mobile number',
                      style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp
                      ),),
                    SizedBox(height: 5.h,),
                    CustomMobileTextField(),
                    SizedBox(height: 28.h,),
                    LocationPicker(title: 'tate',hintText: 'Kaduna',),
                    SizedBox(height: 20.h,),
                    Text('Personal ID Code',
                      style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp
                      ),),
                    SizedBox(height: 5.h,),
                    Text('Example: Please provide your National ID card\nnumber or Driver’s license number or Voter’s card\nnumber',
                      style: TextStyle(
                          color: const Color(0xFF777B76),
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp
                      ),),
                    SizedBox(height: 5.h,),
                    EmptyTextFeild(),
                    SizedBox(height: 90.h,),

                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.h,vertical: 26.h),
                height: 96.h,
                width: double.infinity,
                color: const Color(0xFFFCFDFC),
                child: SignUp_button(color: const Color(0xFF85B870), title: 'Next', textcolor: Color(0xFFEFF5ED),onTap: (){
                  Navigator.pushNamed(context, AccSetup3.id);
                },),
              )
            ],
          ),
        ),
      ),
    );
  }
}