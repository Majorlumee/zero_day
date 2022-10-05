import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrackScreenDetails extends StatelessWidget {
  static String id = 'TrackScreenDetails';
  const TrackScreenDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFF5ED),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
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
                    SizedBox(width: 25.w,),
                    Center(
                      child: Text('Package Information',
                        style: TextStyle(
                            color: const Color(0xFF1D221B),
                            fontWeight: FontWeight.w600,
                            fontSize: 24.sp
                        ),),
                    )


                  ],
                ),
                SizedBox(
                  height: 44.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tracking ID',
                      style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp
                      ),),
                    Text('Order Status',
                      style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp
                      ),)
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('#98095792354',
                      style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp
                      ),),
                    Container(
                      height: 25.h ,
                      width: 107.w,
                      decoration: BoxDecoration(
                          color: const Color(0xFFE1EDDB),
                          borderRadius: BorderRadius.circular(4.r)
                      ),
                      child: Center(
                        child: Text('In transit',
                          style: TextStyle(
                              color: const Color(0xFF1D221B),
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp
                          ),),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text('Progress',
                  style: TextStyle(
                      color: const Color(0xFF1D221B),
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp
                  ),),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  children: [
                    Container(
                      height: 20.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color(0xFF609C47), width: 5.w)
                      ),
                    ),
                    SizedBox(width: 22.h,
                    ),
                    Text('Rider arrived at pickup',
                      style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp
                      ),)
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  children: [
                    Container(
                      height: 20.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color(0xFF609C47), width: 5.w)
                      ),
                    ),
                    SizedBox(width: 22.h,
                    ),
                    Text('Item picked up',
                      style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp
                      ),)
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  children: [
                    Container(
                      height: 20.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color(0xFF609C47), width: 5.w)
                      ),
                    ),
                    SizedBox(width: 22.h,
                    ),
                    Text('Package in transit',
                      style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp
                      ),)
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  children: [
                    Container(
                      height: 20.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color(0xFF1D221B), width: 5.w)
                      ),
                    ),
                    SizedBox(width: 22.h,
                    ),
                    Text('Package delivered',
                      style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp
                      ),)
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 32.h,
                      width: 32.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(64.r),
                      ),
                      child: Center(child: const ImageIcon(AssetImage('images/profile.png'),color: Color(0xFF609C47),)),
                    ),
                    SizedBox(width: 8.h,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Adinoyi Ismaila',
                          style: TextStyle(
                              color: const Color(0xFF1D221B),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp
                          ),),
                        SizedBox(height: 8.h,),
                        Text('14 Elizabeth Drive, Capel Le Ferne,\nCT18 7NA',
                          style: TextStyle(
                              color: const Color(0xFF777B76),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp
                          ),),
                        SizedBox(height: 8.h,),
                        Text('+234 817950028',
                          style: TextStyle(
                              color: const Color(0xFF777B76),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp
                          ),),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        SizedBox(height: 36.h,),
                        Container(
                          height: 34.h ,
                          width: 76.w,
                          decoration: BoxDecoration(
                              color: const Color(0xFF85B870),
                              borderRadius: BorderRadius.circular(80.r)
                          ),
                          child: Center(
                            child: Text('Edit',
                              style: TextStyle(
                                  color: const Color(0xFFEFF5ED),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp
                              ),),
                          ),
                        )
                      ],
                    )

                  ],
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text('Package Information',
                  style: TextStyle(
                      color: const Color(0xFF1D221B),
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp
                  ),),
                SizedBox(
                  height: 24.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Category: ',style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight:FontWeight.w400 ,
                          fontSize: 14.sp,
                        ),),
                        Text('Books/Stationaries',style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight:FontWeight.w600 ,
                          fontSize: 14.sp,
                        ),),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Quantity: ',style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight:FontWeight.w400 ,
                          fontSize: 14.sp,
                        ),),
                        Text('2 Boxes',style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight:FontWeight.w600 ,
                          fontSize: 14.sp,
                        ),),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Dimensions:',style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight:FontWeight.w400 ,
                          fontSize: 14.sp,
                        ),),
                        Text('(20*20) cm, 40lbs',style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight:FontWeight.w600 ,
                          fontSize: 14.sp,
                        ),),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Handeling Details:',style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight:FontWeight.w400 ,
                          fontSize: 14.sp,
                        ),),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Handeling Details:',style: TextStyle(
                              color: const Color(0xFF1D221B),
                              fontWeight:FontWeight.w600 ,
                              fontSize: 14.sp,
                            ),),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text('Hazardious  Substances',style: TextStyle(
                              color: const Color(0xFF1D221B),
                              fontWeight:FontWeight.w600 ,
                              fontSize: 14.sp,
                            ),),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text('Driver Information',
                  style: TextStyle(
                      color: const Color(0xFF1D221B),
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp
                  ),),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 32.h,
                      width: 32.w,
                      decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage('images/Ellipse 46.png'))
                      ),
                    ),
                    SizedBox(width: 8.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Gabin Yarigo',style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight:FontWeight.w400 ,
                          fontSize: 12.sp,
                        ),),
                        SizedBox(height: 6.h,),
                        Text('Driver',style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight:FontWeight.w600 ,
                          fontSize: 14.sp,
                        ),),
                        SizedBox(height: 6.h,),
                        Text('Toyota, Corolla black',style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight:FontWeight.w400 ,
                          fontSize: 12.sp,
                        ),),
                        SizedBox(height: 6.h,),
                        Text('888-NVF',style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight:FontWeight.w600 ,
                          fontSize: 14.sp,
                        ),),


                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 32.h,
                      width: 32.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(112.r),
                          color: const Color(0xffEFF5ED)
                      ),
                      child: const Center(
                        child: ImageIcon(AssetImage('images/message.png'),
                          color: Color(0xFF609C47),),
                      ),
                    ),
                    SizedBox(width: 16.w,),
                    Center(
                      child: Container(
                        height: 32.h,
                        width: 32.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(112.r),
                            color: const Color(0xffEFF5ED)
                        ),
                        child: const Center(
                          child: ImageIcon(AssetImage('images/Vector.png'),
                            color: Color(0Xff609C47),),
                        ),
                      ),
                    )

                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}