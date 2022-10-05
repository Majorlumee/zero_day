import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widgets/signUpbutton.dart';

class draftsContainer extends StatelessWidget {
  String trackingID;
  String amount;
  String pickUpDate;
  String pickUpAddress;
  String devileryDate;
  String deliveryAddress;
  String quantity;
  String dimensions;
  draftsContainer({required this.dimensions,required this.quantity,required this.deliveryAddress,required this.devileryDate,required this.pickUpAddress,required this.pickUpDate,required this.amount,required this.trackingID});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 457.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xFFFCFCFC),
          borderRadius: BorderRadius.circular(8.r)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h,vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Tracking ID',
                  style: TextStyle(
                      color: const Color(0xFF1D221B),
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp
                  ),),
                Text('Amount Paid',
                  style: TextStyle(
                      color: const Color(0xFF1D221B),
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp
                  ),)
              ],
            ),
            SizedBox(height: 8.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(trackingID,
                  style: TextStyle(
                      color: const Color(0xFF1D221B),
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp
                  ),),
                Text(amount,
                  style: TextStyle(
                      color: const Color(0xFF1D221B),
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp
                  ),)
              ],
            ),
            SizedBox(height: 24.h,),
            Text('Pick Up Details',
              style: TextStyle(
                  color: const Color(0xFF1D221B),
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp
              ),),
            SizedBox(height: 8.h,),
            Text(pickUpDate,
              style: TextStyle(
                  color: const Color(0xFF1D221B),
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp
              ),),
            SizedBox(height: 8.h,),
            Text(pickUpAddress,
              style: TextStyle(
                  color: const Color(0xFF1D221B),
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp
              ),),
            SizedBox(height: 24.h,),
            Text('Delivery Details',
              style: TextStyle(
                  color: const Color(0xFF1D221B),
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp
              ),),
            SizedBox(height: 8.h,),
            Text(devileryDate,
              style: TextStyle(
                  color: const Color(0xFF1D221B),
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp
              ),),
            SizedBox(height: 8.h,),
            Text(deliveryAddress,
              style: TextStyle(
                  color: const Color(0xFF1D221B),
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp
              ),),
            SizedBox(height: 24.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Quantity',
                      style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp
                      ),),
                    SizedBox(height: 8.h,),
                    Text(quantity,
                      style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp
                      ),)
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Dimensions',
                      style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp
                      ),),
                    SizedBox(height: 8.h,),
                    Text(dimensions,
                      style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp
                      ),)
                  ],
                ),

              ],
            ),
            SizedBox(height: 24.h,),
            const Divider(),
            SizedBox(height: 24.h,),
            SignUp_button(color: const Color(0XFF85B870), title: 'Continue', textcolor: const Color(0xFFFCFDFC))




          ],
        ),
      ),
    );
  }
}