import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OtpForm extends StatelessWidget {
  OtpFieldController? otpFieldController;
  void Function(String)? onCompleted;
  OtpForm({this.otpFieldController, this.onCompleted});

  @override
  Widget build(BuildContext context) {
    return  OTPTextField(

        controller: otpFieldController,
        obscureText: true,
        otpFieldStyle: OtpFieldStyle(
          backgroundColor: const Color(0xFFFCFDFC),
        ),
        length: 6,
        style: TextStyle(
            color: const Color(0xff85B870),
            fontSize: 40.sp
        ),
        keyboardType: TextInputType.number,
        width: MediaQuery.of(context).size.width,
        textFieldAlignment: MainAxisAlignment.spaceAround,
        fieldWidth: 40.w,
        fieldStyle: FieldStyle.box,
        outlineBorderRadius: 4.sp,
        onChanged: (pin) {
          print("Changed: " + pin);
        },
        onCompleted: onCompleted);
  }
}
