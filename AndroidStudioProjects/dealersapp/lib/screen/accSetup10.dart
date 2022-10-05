import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../Widgets/signUpbutton.dart';
import 'accSetup11.dart';

class AccSetup10 extends StatelessWidget {
  final ImagePicker _picker = ImagePicker();
  Future<void>pickImage()async{
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
  }
  static String id = 'AccSetup10';
  AccSetup10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF5ED),
      body: SafeArea(
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
                  Text('Upload documents',
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
                    height: 34.h,
                  ),
                  RichText(text: TextSpan(
                      children: [
                        TextSpan(text: 'Driver’s Profile Photo',style: TextStyle(
                            color: const Color(0xFF1D221B),
                            fontWeight: FontWeight.w600 ,
                            fontSize: 14.sp
                        )),
                        TextSpan(text: ' *',style: TextStyle(
                            color: const Color(0xFF609C47),
                            fontWeight: FontWeight.w600 ,
                            fontSize: 14.sp
                        )),

                      ]
                  )),
                  SizedBox(
                    height: 5.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Maximum file size: 4mb',style: TextStyle(
                        color: const Color(0xFF777B76),
                        fontWeight:FontWeight.w400 ,
                        fontSize: 12.sp,
                      ),),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.h,),
                        height: 46.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: const Color(0xFFFCFDFC),
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(color: const Color(0xFFE8E9E8) ,width: 2.w)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Profile Picture.jpg',style: TextStyle(
                              color: const Color(0xFF777B76),
                              fontWeight:FontWeight.w400 ,
                              fontSize: 12.sp,
                            ),),
                            GestureDetector(
                              onTap:()async{
                                await pickImage();
                              },
                              child: const ImageIcon(AssetImage('images/document-upload.png',),

                                color: Color(0xFF609C47),),
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 20.h,),
                  RichText(text: TextSpan(
                      children: [
                        TextSpan(text: 'Driver’s Profile Photo',style: TextStyle(
                            color: const Color(0xFF1D221B),
                            fontWeight: FontWeight.w600 ,
                            fontSize: 14.sp
                        )),
                        TextSpan(text: ' *',style: TextStyle(
                            color: const Color(0xFF609C47),
                            fontWeight: FontWeight.w600 ,
                            fontSize: 14.sp
                        )),

                      ]
                  )),
                  SizedBox(
                    height: 5.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Maximum file size: 4mb',style: TextStyle(
                        color: const Color(0xFF777B76),
                        fontWeight:FontWeight.w400 ,
                        fontSize: 12.sp,
                      ),),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.h,),
                        height: 46.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: const Color(0xFFFCFDFC),
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(color: const Color(0xFFE8E9E8) ,width: 2.w)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Driver’s Licence.jpg',style: TextStyle(
                              color: const Color(0xFF777B76),
                              fontWeight:FontWeight.w400 ,
                              fontSize: 12.sp,
                            ),),
                            GestureDetector(
                              onTap:()async{
                                await pickImage();
                              },
                              child: const ImageIcon(AssetImage('images/document-upload.png',),

                                color: Color(0xFF609C47),),
                            )
                          ],
                        ),
                      ),

                    ],
                  ),

                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.h,vertical: 26.h),
                  height: 96.h,
                  width: double.infinity,
                  color: const Color(0xFFFCFDFC),
                  child: SignUp_button(color: const Color(0xFF85B870), title: 'Next',onTap: (){
                    Navigator.pushNamed(context, AccSetup11.id);
                  }, textcolor: const Color(0xFFEFF5ED)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}