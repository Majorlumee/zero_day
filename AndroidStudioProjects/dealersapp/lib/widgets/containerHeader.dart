import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class containerHeader extends StatelessWidget {
  Color color;
  Color textColor;
  String text;
  Function() onTap;
  containerHeader({Key? key, required this.color,required this.text,required this.onTap,required this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48.h,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4.r)
        ),
        child: Center(
          child: Text(text,
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w600,
                fontSize: 16.sp
            ),),
        ),
      ),
    );
  }
}