import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SignUp_button extends StatelessWidget {
  Color color;
  Color textcolor;
  String title;
  Function()? onTap;
  SignUp_button({Key? key, required this.color, required this.title, required this.textcolor, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4.r)
        ),
        child: Center(
          child: Text(title,
            style: TextStyle(
                color: textcolor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
    );
  }
}