import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class completedContainer extends StatelessWidget {
  String trackingID;
  String amount;
  String pickUpDate;
  String pickUpAddress;
  String devileryDate;
  String deliveryAddress;
  String quantity;
  String dimensions;
  String driverName;
  String driverImage;
  completedContainer({Key? key, required this.driverName,required this.dimensions,required this.quantity,required this.deliveryAddress,required this.devileryDate,required this.pickUpAddress,required this.pickUpDate,required this.trackingID,required this.amount,required this.driverImage}) : super(key: key);

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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 32.h,
                  width: 32.w,
                  decoration:  BoxDecoration(
                      image: DecorationImage(image: AssetImage(driverImage))
                  ),
                ),
                SizedBox(width: 8.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(driverName,
                      style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp
                      ),),
                    SizedBox(height: 6.h,),
                    Text('Driver',
                      style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp
                      ),)
                  ],
                ),
                Spacer(),
                Container(
                  height: 32.h,
                  width: 32.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(112.r),
                      color: const Color(0xffE8E9E8)
                  ),
                  child: const Center(
                    child: ImageIcon(AssetImage('images/message.png'),
                      color: Color(0xFFA5A7A4),),
                  ),
                ),
                SizedBox(width: 16.w,),
                Container(
                  height: 32.h,
                  width: 32.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(112.r),
                      color: const Color(0xffE8E9E8)
                  ),
                  child: const Center(
                    child: ImageIcon(AssetImage('images/call.png'),
                      color: Color(0XffA5A7A4),),
                  ),
                )

              ],
            )




          ],
        ),
      ),
    );
  }
}