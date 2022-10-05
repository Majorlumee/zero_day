import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../Widgets/customTextField.dart';
import '../Widgets/signUpbutton.dart';
import 'confirmationEmail.dart';


class EmailSignUP extends StatefulWidget {

  static String id = 'EmailSignup';
  EmailSignUP({Key? key}) : super(key: key);

  @override
  State<EmailSignUP> createState() => _EmailSignUPState();
}

class _EmailSignUPState extends State<EmailSignUP> {
  TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  String? validateEmail(String? formEmail) {
    if (formEmail == null || formEmail.isEmpty) {
      return 'E-mail address is required';
    }

    String pattern = r'\w+@\w+\.\w+';
    RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(formEmail)) {
      return 'Invalid E-mail address format';
    }

    return null;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController.addListener(() {
      setState(() {
      });
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.removeListener(() { });
  }
  void onchange(){
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF5EE),
      body: Form(
        key: _key,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: SizedBox(
                        height: 32.h,
                        width: 32.w,
                        child: const Center(
                          child: ImageIcon(AssetImage('images/arrow-left.png'),color: Color(0xFF609C47),),
                        ),
                      ),
                    ),
                    SizedBox(width: 108.h,),
                    CircularPercentIndicator(
                      animation: true,
                      radius: 32.r,
                      backgroundColor: const Color(0xFFE2EDDB),
                      percent: 0.3,
                      progressColor: const Color(0xFF609C47),
                      circularStrokeCap: CircularStrokeCap.round,
                      center: Text('30%',style: TextStyle(
                        color: const Color(0xFF1D221B),
                        fontWeight:FontWeight.w400 ,
                        fontSize: 14.sp,
                      ),),


                    )

                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text('What’s your email address?',style: TextStyle(
                  color: const Color(0xFF1D221B),
                  fontWeight:FontWeight.w600 ,
                  fontSize: 26.sp,
                ),),
                SizedBox(
                  height: 8.h,
                ),
                Text('Enter the email you’d like to use for Cargodealer.',style: TextStyle(
                  color: const Color(0xFF777B76),
                  fontWeight:FontWeight.w400 ,
                  fontSize: 12.sp,
                ),),
                SizedBox(
                  height: 26.h,
                ),
                CustomTextFeild(hinttext: 'WadeWarren@gmail.com', title: 'Email Address',controller: emailController,validator: validateEmail,),
                SizedBox(
                  height: 18.h,
                ),
                Center(
                  child: RichText(text: TextSpan(children: [
                    TextSpan(text: 'Have an account? ', style: TextStyle(
                      color: const Color(0xFF1D221B),
                      fontWeight:FontWeight.w400 ,
                      fontSize: 12.sp,
                    )),

                    TextSpan(text: 'Login Here', style: TextStyle(
                      color: const Color(0xFF609C47),
                      fontWeight:FontWeight.w400 ,
                      fontSize: 12.sp,
                    ))
                  ])),
                ),
                SizedBox(
                  height: 19.h,
                ),
                RichText(text: TextSpan(
                    children:[
                      TextSpan(text:'By registering you accept our ',
                          style: TextStyle(
                            color: const Color(0xFF1D221B),
                            fontWeight: FontWeight.w400 ,
                            fontSize: 12.sp,
                          )),
                      TextSpan(text:'Terms & Conditions',
                          style: TextStyle(
                            color: const Color(0xFF609C47),
                            fontWeight: FontWeight.w400 ,
                            fontSize: 12.sp,
                          )),
                      TextSpan(text:' and',
                          style: TextStyle(
                            color: const Color(0xFF1D221B),
                            fontWeight: FontWeight.w400 ,
                            fontSize: 12.sp,
                          )),
                      TextSpan(text:' Privacy Policy. ',
                          style: TextStyle(
                            color: const Color(0xFF609C47),
                            fontWeight: FontWeight.w400 ,
                            fontSize: 12.sp,
                          )),
                      TextSpan(text:'Your will be securely encrypted with TLS.',
                          style: TextStyle(
                            color: const Color(0xFF1D221B),
                            fontWeight: FontWeight.w400 ,
                            fontSize: 12.sp,
                          ))

                    ]
                )),
                Expanded(
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SignUp_button(color: emailController.text == ''? const Color(0xFFE8E9E8):const Color(0xFF85B870), title: 'Next', textcolor: emailController.text == ''? const Color(0xFFA5A7A4):const Color(0xFFFCFDFC), onTap: (){
                        if(_key.currentState?.validate()==true){
                          Navigator.pushNamed(context, ConfirmationScreen.id);
                          FocusScope.of(context).unfocus();
                        }
                      },)),
                ),
                SizedBox(height: 30.h,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
