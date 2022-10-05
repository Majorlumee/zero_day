import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class EmptyTextFeild extends StatelessWidget {
  String? hintext;
  EmptyTextFeild({this.hintext});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hintext,
          contentPadding:  EdgeInsets.symmetric(horizontal: 20.h ,vertical: 14.h),
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
    );
  }
}
