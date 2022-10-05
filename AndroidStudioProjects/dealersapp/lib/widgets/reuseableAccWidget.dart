import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ReuseableAccWidget extends StatelessWidget {
  String header;
  String body1;
  String body2;
  String imageUrl1;
  String imageUrl2;
  Function()? onTap;
  Function()? onTap1;
  ReuseableAccWidget({required this.header,required this.body1, required this.body2, required this.imageUrl1, required this.imageUrl2, this.onTap, this.onTap1});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(header,
          style: TextStyle(
              color: const Color(0xFF1D221B),
              fontWeight: FontWeight.w600,
              fontSize: 14.sp
          ),),
        SizedBox(height: 16.h,),
        Container(
          width: double.infinity,
          height: 128.h,
          decoration: BoxDecoration(
              color: const Color(0xFFFCFDFC),
              borderRadius: BorderRadius.circular(8.r)
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 32.h ,vertical: 16.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: onTap,
                  child: Row(
                    children: [
                      Container(
                        height: 32.h,
                        width: 32.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(imageUrl1), fit: BoxFit.fill)
                        ),
                      ),
                      SizedBox(width: 8.w,),
                      Text(body1,
                        style: TextStyle(
                            color: const Color(0xFF4A4E49),
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp
                        ),),

                    ],
                  ),
                ),
                const Divider(),
                GestureDetector(
                  onTap: onTap1,
                  child: Row(
                    children: [
                      Container(
                        height: 32.h,
                        width: 32.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(imageUrl2), fit: BoxFit.fill)
                        ),
                      ),
                      SizedBox(width: 8.w,),
                      Text(body2,
                        style: TextStyle(
                            color: const Color(0xFF4A4E49),
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp
                        ),),

                    ],
                  ),
                )
              ],
            ),
          ),
        )

      ],
    );
  }
}
