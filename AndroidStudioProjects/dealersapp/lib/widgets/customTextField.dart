import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomTextFeild extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final String hinttext;
  final String title;
  CustomTextFeild({required this.title,this.controller,required this.hinttext,this.validator});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          child: Text(title,style:  TextStyle(
            color: const Color(0xFF1D221B),
            fontWeight:FontWeight.w600 ,
            fontSize: 14.sp,
          ),),
        ),
        SizedBox(
          height: 5.h,
        ),
        SizedBox(
          height: 59.h,
          child: TextFormField(
            controller: controller,
            validator: validator,
            decoration: InputDecoration(
                contentPadding:  EdgeInsets.symmetric(horizontal: 20.h ,vertical: 14.h),
                hintText:hinttext,
                hintStyle: TextStyle(
                    color: const Color(0xFF777B76),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400
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
        ),



      ],
    );
  }
}
