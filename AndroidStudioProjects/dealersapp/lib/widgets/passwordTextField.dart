import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class passwordTextFeild extends StatefulWidget {
  String title;
  TextEditingController? controller;
  passwordTextFeild({required this.title,this.controller});

  @override
  State<passwordTextFeild> createState() => _passwordTextFeildState();
}

class _passwordTextFeildState extends State<passwordTextFeild> {
  bool obscure = true;
  IconData icon = Icons.visibility_off;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          child:  Text(widget.title,style: TextStyle(
            color: const Color(0xFF1D221B),
            fontWeight:FontWeight.w600 ,
            fontSize: 14.sp,
          ),),
        ),
        SizedBox(
          height: 5.h,
        ),
        SizedBox(
          height: 46.h,
          child: TextField(
            controller: widget.controller,
            obscureText: obscure,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 20.h ,vertical: 14.h),
                suffixIcon: GestureDetector(
                    onTap: (){
                      setState(() {
                        if(icon == Icons.visibility){
                          obscure = true;
                          icon = Icons.visibility_off;
                        }
                        else if(icon == Icons.visibility_off){
                          obscure = false;
                          icon = Icons.visibility;
                        }
                      });
                    },
                    child: Icon(icon, color: const Color(0xFF609C47),)) ,
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