import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LocationPicker extends StatelessWidget {
  String title;
  String hintText;
  LocationPicker({required this.hintText,required this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.h),
          child: Text(title,
            style: TextStyle(
                color: const Color(0xFF1D221B),
                fontWeight: FontWeight.w600,
                fontSize: 14.sp
            ),),
        ),
        SizedBox(height: 5.h,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          height: 46.h,
          width: double.infinity,
          decoration:  BoxDecoration(
              color: const Color(0xFFFCFDFC),
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: const Color(0xFFE8E9E8),width: 2.w)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(hintText,
                style: TextStyle(
                    color: const Color(0xFF1D221B),
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp
                ),),
              const ImageIcon(AssetImage('images/arrow-down.png',),color: Color(0xff609C47),)

            ],
          ),
        )
      ],
    );
  }
}