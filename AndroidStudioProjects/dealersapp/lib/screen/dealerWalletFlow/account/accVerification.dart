import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccVerification extends StatelessWidget {
  static String id = 'AccVerification';
  const AccVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF5ED),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            children: [
              SizedBox(height: 32.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  GestureDetector(
                      onTap: (){Navigator.pop(context);},
                      child:  const ImageIcon(AssetImage('images/arrow-left.png'),color: Color(0xFF609C47),)),
                  Text('Account Verification',
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
                height: 114.h,
                decoration: BoxDecoration(
                    color: const Color(0xFFFCFDFC),
                    borderRadius: BorderRadius.circular(8.r)
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.h,vertical:18.h ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Email Verification',
                            style: TextStyle(
                                color: const Color(0xFF4A4E49),
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp
                            ),),
                          Container(
                              height: 25.h,
                              width: 107.w,
                              decoration:  BoxDecoration(
                                  color:  const Color(0xFF85B870),
                                  borderRadius: BorderRadius.circular(4.r)
                              ),
                              child: Center(
                                child: Text('Completed',
                                  style: TextStyle(
                                      color: const Color(0xFFEFF5ED),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.sp
                                  ),),
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('KYC Verification',
                            style: TextStyle(
                                color: const Color(0xFF4A4E49),
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp
                            ),),
                          Container(
                              height: 25.h,
                              width: 107.w,
                              decoration:  BoxDecoration(
                                  color:  const Color(0xFF85B870),
                                  borderRadius: BorderRadius.circular(4.r)
                              ),
                              child: Center(
                                child: Text('Incomplete',
                                  style: TextStyle(
                                      color: const Color(0xFFE1EDDB),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.sp
                                  ),),
                              ))
                        ],
                      )
                    ]
                    ,
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
