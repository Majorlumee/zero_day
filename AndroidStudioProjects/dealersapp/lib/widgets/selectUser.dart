import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectUser extends StatelessWidget {
  String title;
  int index;
  int selectedIndex;
  String imageUrl;
  Function() onTap;
  SelectUser({
    Key? key,required this.imageUrl,required this.index,required this.onTap,required this.title,required this.selectedIndex
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
          height: 189.h,
          width: 160.w,
          color: selectedIndex == index ? const Color(0xFF85B870):const Color(0xFFE1EDDB),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h,vertical: 16.h),
            child: Column(
              children: [
                Image.asset(imageUrl,height: 128.h ,width: 128.w,),
                SizedBox(height: 8.h,),
                Center(
                  child: Text(title,style: TextStyle(
                    color: const Color(0xFF000000),
                    fontWeight:FontWeight.w600 ,
                    fontSize: 14.sp,
                  ),),
                ),
              ],
            ),
          )
      ),
    );
  }
}

