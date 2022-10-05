import 'dart:async';
import 'package:dealersapp/screen/onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dealersapp/screen/accSetup8.dart';


class SplashScreen extends StatefulWidget {
  static String id = 'SlashScreen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  AlignmentGeometry _alignment = Alignment.center;
  double _opacity = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 700), () {
      _alignment = Alignment.centerRight;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFF006600),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 49.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedAlign(
              duration: const Duration(seconds: 1),
              alignment: _alignment,
              curve: Curves.linear,
              onEnd: (){setState(() {
                _opacity = 1;
              });},
              child: Container(
                height: 34.h,
                width: 79.w,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/CD 1 (Traced).png'),
                        fit: BoxFit.fill)
                ),
              ),
            ),
            AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: _opacity,
              curve: Curves.bounceIn,
              child: Align(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Cargodealer',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.sp
                      ),),
                    Text('inc',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.sp
                      ),)
                  ],
                ),
              ),
              onEnd: (){
                Navigator.pushReplacementNamed(context, OnBoarding.id);
              },
            ),
          ],


        ),
      ),
    );
  }
}
