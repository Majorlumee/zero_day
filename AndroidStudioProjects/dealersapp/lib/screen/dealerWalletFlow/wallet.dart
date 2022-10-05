import 'package:dealersapp/screen/withdraw.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Widgets/signUpbutton.dart';

class Wallet extends StatefulWidget {
  static String id = 'Wallet';
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  IconData _icon = Icons.visibility_off;
  TextSpan _text = TextSpan(
      text: '*********', style: TextStyle(
      color: const Color(0xFFEFF5ED),
      fontSize: 16.sp,
      fontWeight: FontWeight.w400
  ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFFEFF5ED),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32.h,),
                Center(
                  child: Text('My Wallet',
                    style: TextStyle(
                        color: const Color(0xFF1D221B),
                        fontWeight: FontWeight.w600,
                        fontSize: 24.sp
                    ),),
                ),
                SizedBox(height: 44.h,),
                Container(
                  height: 182.h,
                  width: double.infinity,
                  color: const Color(0xFF85B870),
                  child: Padding(
                    padding:EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Available Balance',
                              style: TextStyle(
                                  color: const Color(0xFFEFF5ED),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.sp
                              ),),
                            const Spacer(),
                            GestureDetector(
                                onTap: (){
                                  setState(() {
                                    if(_icon == Icons.visibility_off){
                                      _icon = Icons.visibility;
                                      _text = TextSpan(
                                          text: '500,000', style: TextStyle(
                                          color: const Color(0xFFEFF5ED),
                                          fontSize: 32.sp,
                                          fontWeight: FontWeight.w600
                                      ));
                                    }
                                    else if(_icon == Icons.visibility){
                                      _icon = Icons.visibility_off;
                                      _text = TextSpan(
                                          text: '*********', style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400
                                      ));
                                    }

                                  });
                                },
                                child: Icon(_icon, color: const Color(0xFFEFF5ED),)),
                            SizedBox(width: 9.w,),
                            Text('Show',
                              style: TextStyle(
                                  color: const Color(0xFFEFF5ED),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp
                              ),),



                          ],
                        ),
                        SizedBox(height: 15.h,),
                        RichText(text: TextSpan(
                            children: [
                              TextSpan(
                                  text: '₦ ', style: TextStyle(
                                  color: const Color(0xFFEFF5ED),
                                  fontSize: 32.sp,
                                  fontWeight: FontWeight.w600
                              )
                              ),
                              _text]
                        ),),
                        SizedBox(height: 10.h,),
                        SignUp_button(color: const Color(0xFFFCFDFC), title: 'Fund Wallet', textcolor: const Color(0xFF85B870),onTap: (){
                          Navigator.pushNamed(context,Withdraw.id);
                        },)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40.h,),
                Text('Browse files',
                  style: TextStyle(
                      color: const Color(0xFF1D221B),
                      fontWeight: FontWeight.w600,
                      fontSize: 24.sp
                  ),),
                SizedBox(height: 16.h,),
                HistortyDetails(shapeColor: Color(0xFF609C47),walletType: 'Wallet Top-up',date: 'Aug 11th, 2022',price: '+ N5,000,000',),
                SizedBox(height: 16.h,),
                HistortyDetails(date: 'Aug 11th, 2022', price: '- N5,000', shapeColor: const Color(0xFF1D221B), walletType: 'Wallet Withdrawal'),
                SizedBox(height: 16.h,),
                HistortyDetails(date: 'Aug 11th, 2022', price: '- N5,000', shapeColor: const Color(0xFF1D221B), walletType: 'Wallet Withdrawal'),
                SizedBox(height: 16.h,),
                HistortyDetails(shapeColor: Color(0xFF609C47),walletType: 'Wallet Top-up',date: 'Aug 11th, 2022',price: '+ N5,000,000',),
                SizedBox(height: 16.h,),
                HistortyDetails(date: 'Aug 11th, 2022', price: '- N5,000', shapeColor: const Color(0xFF1D221B), walletType: 'Wallet Withdrawal'),
                SizedBox(height: 16.h,),
                HistortyDetails(shapeColor: Color(0xFF609C47),walletType: 'Wallet Top-up',date: 'Aug 11th, 2022',price: '+ N5,000,000',),
                SizedBox(height: 16.h,),
                HistortyDetails(date: 'Aug 11th, 2022', price: '- N5,000', shapeColor: const Color(0xFF1D221B), walletType: 'Wallet Withdrawal'),
                SizedBox(height: 16.h,),
                HistortyDetails(shapeColor: Color(0xFF609C47),walletType: 'Wallet Top-up',date: 'Aug 11th, 2022',price: '+ N5,000,000',),
                SizedBox(height: 16.h,),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HistortyDetails extends StatelessWidget {
  Color shapeColor;
  String walletType;
  String date;
  String price;
  HistortyDetails({Key? key, required this.date,required this.price,required this.shapeColor,required this.walletType}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 16.h,
          width: 16.w,
          decoration:  BoxDecoration(
              color: shapeColor,
              shape: BoxShape.circle
          ),
        ),
        SizedBox(width: 8.w,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(walletType,
              style: TextStyle(
                  color: const Color(0xFF1D221B),
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp
              ),),
            SizedBox(height: 4.h,),
            Text(date,
              style: TextStyle(
                  color: const Color(0xFFA5A7A4),
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp
              ),),

          ],
        ),
        const Spacer(),
        Center(
          child: Text(price,
            style: TextStyle(
                color: const Color(0xFF1D221B),
                fontWeight: FontWeight.w400,
                fontSize: 14.sp
            ),),
        )

      ],
    );
  }
}
