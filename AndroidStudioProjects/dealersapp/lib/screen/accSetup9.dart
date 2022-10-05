import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class AccSetup9 extends StatelessWidget {
  static String id = 'AccSetup9';
  const AccSetup9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFFEFF5ED) ,
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
                height: 150.h,
                width: double.infinity,
                child: ListView.builder(itemBuilder: (context ,index){
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 22.h),
                    height:48.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFCFCFC),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 20.h,
                          width: 20.h,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF85B870)
                          ),
                          child: Row(
                            children: [
                              const Center(child: Icon(Icons.done,color: Color(0XFFFCFCFC),)),
                              SizedBox(width: 22.w,),
                              Text('I am 18 years and above.',
                                style: TextStyle(
                                    color: const Color(0xFF1D221B),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp
                                ),),

                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },itemCount: 2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
