import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';


class CustomMobileTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FutureOr<String?> Function(PhoneNumber?)? validator;
  CustomMobileTextField({Key? key, this.controller, this.validator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        width: double.infinity,
        child:IntlPhoneField(
          validator: validator,
          controller: controller,
          flagsButtonPadding: EdgeInsets.symmetric(horizontal: 20.h,vertical: 14.h),
          showDropdownIcon: false,
          disableLengthCheck: true,
          dropdownIconPosition: IconPosition.trailing,
          keyboardType: TextInputType.number,
          decoration:  InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 14.h),//decoration for Input Field
            filled: true,
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.r)),
                borderSide: BorderSide(color: const Color(0xFFC2DCB7), width: 2.w)
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.r)),
                borderSide: BorderSide(color: const Color(0xFFFCFDFC), width: 2.w)
            ),
          ),
          initialCountryCode: 'NG', //default contry code, NP for Nepal
          onChanged: (phone) {
            //when phone number country code is changed
            print(phone.completeNumber); //get complete number
            print(phone.countryCode); // get country code only
            print(phone.number); // only phone number
          },
        )
    );}}
