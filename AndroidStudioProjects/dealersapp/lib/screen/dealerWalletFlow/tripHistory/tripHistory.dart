import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/completedContainer.dart';
import '../../../widgets/containerHeader.dart';
import '../../../widgets/draftContainer.dart';
import '../../../widgets/inTransitContainer.dart';


class SignUpHistory extends StatefulWidget {
  static String id = 'SignUpHistory';
  const SignUpHistory({Key? key}) : super(key: key);

  @override
  State<SignUpHistory> createState() => _SignUpHistoryState();
}

class _SignUpHistoryState extends State<SignUpHistory> {
  int index = 0;
  List <Widget> pages = [
    ListView(
      children: [
        inTransitContainer(trackingID: '#48098720194', amount: '₦5,500.00', pickUpDate: '02/06/2022', pickUpAddress: '52 Bedok Reservoir Cres Singapore 479226', devileryDate: '07/06/2022', deliveryAddress: '510 Kampong Bahru Rd Singapore 099446', quantity: '1 Box', dimensions: '(30*21) cm, 72 lbs', driverName: 'Jerome Bell',driverImage: 'images/Ellipse 46.png',),
        SizedBox(height: 20.h,),
        inTransitContainer(trackingID: '#48098720194', amount: '₦5,500.00', pickUpDate: '02/06/2022', pickUpAddress: '52 Bedok Reservoir Cres Singapore 479226', devileryDate: '07/06/2022', deliveryAddress: '510 Kampong Bahru Rd Singapore 099446', quantity: '1 Box', dimensions: '(30*21) cm, 72 lbs', driverName: 'Jerome Bell',driverImage: 'images/Ellipse 46.png',),
      ],
    ),
    ListView(
      children: [
        completedContainer(trackingID: '#48098720194',amount: '₦5,500.00',pickUpDate: '02/06/2022',pickUpAddress: '52 Bedok Reservoir Cres Singapore 479226',devileryDate: '07/06/2022',deliveryAddress: '510 Kampong Bahru Rd Singapore 099446',quantity: '1 Box',dimensions: '(30*21) cm, 72 lbs',driverName: 'Jerome Bell',driverImage: 'images/Ellipse 46.png',),
        SizedBox(height: 20.h,),
        completedContainer(trackingID: '#48098720194',amount: '₦5,500.00',pickUpDate: '02/06/2022',pickUpAddress: '52 Bedok Reservoir Cres Singapore 479226',devileryDate: '07/06/2022',deliveryAddress: '510 Kampong Bahru Rd Singapore 099446',quantity: '1 Box',dimensions: '(30*21) cm, 72 lbs',driverName: 'Jerome Bell',driverImage: 'images/Ellipse 46.png',),
      ],
    ),
    ListView(
      children: [
        draftsContainer(trackingID: '#48098720194',amount: '₦5,500.00',pickUpDate: '02/06/2022',pickUpAddress: '52 Bedok Reservoir Cres Singapore 479226',devileryDate: '07/06/2022',deliveryAddress: '510 Kampong Bahru Rd Singapore 099446',quantity: '1 Box',dimensions: '(30*21) cm, 72 lbs',),
        SizedBox(height: 20.h,),
        draftsContainer(trackingID: '#48098720194',amount: '₦5,500.00',pickUpDate: '02/06/2022',pickUpAddress: '52 Bedok Reservoir Cres Singapore 479226',devileryDate: '07/06/2022',deliveryAddress: '510 Kampong Bahru Rd Singapore 099446',quantity: '1 Box',dimensions: '(30*21) cm, 72 lbs',)
      ],
    )

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor:const Color(0xFFEFF5ED) ,
          body: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.h),
            child: Column(
              children: [
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){Navigator.pop(context);},
                      child: SizedBox(
                        height: 32.h,
                        width: 32.w,
                        child: const Center(
                          child: ImageIcon(AssetImage('images/arrow-left.png'),color: Color(0xFF609C47),),
                        ),
                      ),
                    ),
                    SizedBox(width: 60.w,),
                    Text('Pick Up History',
                      style: TextStyle(
                          color: const Color(0xFF1D221B),
                          fontWeight: FontWeight.w600,
                          fontSize: 24.sp
                      ),)


                  ],
                ),
                SizedBox(
                  height: 44.h,
                ),
                Row(
                  children: [
                    Expanded(child: containerHeader(
                      text: 'In Transit',
                      textColor: index == 0 ? const Color(0xFFEFF5ED): const Color(0xFF1D221B),
                      color:index == 0 ? const Color(0xFF609C47):const Color(0xFFFCFDFC),
                      onTap: (){
                        setState(() {
                          index = 0;
                        });
                      },)),
                    Expanded(child: containerHeader(
                      text: 'Completed',
                      textColor: index == 1 ? const Color(0xFFEFF5ED): const Color(0xFF1D221B) ,
                      color: index == 1 ? const Color(0xFF609C47):const Color(0xFFFCFDFC) ,
                      onTap: (){
                        setState(() {
                          index = 1;
                        });
                      },
                    )),
                    Expanded(child: containerHeader(
                      text: 'Drafts' ,
                      textColor: index == 2 ? const Color(0xFFEFF5ED): const Color(0xFF1D221B) ,
                      color: index == 2 ? const Color(0xFF609C47):const Color(0xFFFCFDFC) ,
                      onTap: (){
                        setState(() {
                          index = 2;
                        });
                      },
                    ))
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Expanded(child: pages[index])

              ],
            ),
          ),
        ));
  }
}

