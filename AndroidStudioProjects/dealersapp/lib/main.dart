import 'package:dealersapp/screen/accSetup10.dart';
import 'package:dealersapp/screen/accSetup11.dart';
import 'package:dealersapp/screen/accSetup3.dart';
import 'package:dealersapp/screen/accSetup8.dart';
import 'package:dealersapp/screen/accSetup9.dart';
import 'package:dealersapp/screen/dealerWalletFlow/account/accVerification.dart';
import 'package:dealersapp/screen/dealerWalletFlow/account/changePassword.dart';
import 'package:dealersapp/screen/dealerWalletFlow/account/changePin.dart';
import 'package:dealersapp/screen/dealerWalletFlow/account/editProfile.dart';
import 'package:dealersapp/screen/dealerWalletFlow/account/profile.dart';
import 'package:dealersapp/screen/walletHistory.dart';
import 'package:dealersapp/screen/withdraw.dart';
import 'package:dealersapp/state_manager/state_manager.dart';
import 'package:provider/provider.dart';
import 'widgets/bottombar.dart';
import 'package:dealersapp/screen/confirmationEmail.dart';
import 'package:dealersapp/screen/emailSignUp.dart';
import 'package:dealersapp/screen/onBoarding.dart';
import 'package:dealersapp/screen/password.dart';
import 'package:dealersapp/screen/passwordCreated.dart';
import 'package:dealersapp/screen/signUpScreen.dart';
import 'package:dealersapp/screen/splashScreen.dart';
import 'package:dealersapp/screen/verifiedPhoneNumber.dart';
import 'package:dealersapp/screen/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/screenutil_init.dart';

void main() {
  runApp(ScreenUtilInit(
    designSize:  const Size(375, 812),
    builder: (_,context){
      return  MultiProvider(
        providers: [ChangeNotifierProvider(create: (context)=>stateManager())],
        child: MaterialApp(
          initialRoute: SplashScreen.id ,
          routes: {
            AccSetup8.id: (context) => const AccSetup8(),
            BottomBar.id: (context) => const BottomBar(),
            AccSetup9.id: (context) => const AccSetup9(),
            AccSetup10.id: (context) => AccSetup10(),
            AccSetup11.id: (context) => const AccSetup11(),
            SplashScreen.id: (context) => const SplashScreen(),
            OnBoarding.id: (context) => const OnBoarding(),
            SignUpScreen.id: (context) => const SignUpScreen(),
            EmailSignUP.id: (context) => EmailSignUP(),
            ConfirmationScreen.id: (context) => const ConfirmationScreen(),
            WelcomeScreen.id: (context) => const WelcomeScreen(),
            AccSetup3.id: (context) => const AccSetup3(),
            PassWordScreen.id: (context) => const PassWordScreen(),
            PasswordCreatedScreen.id: (context) => const PasswordCreatedScreen(),
            VerifiedPhoneNumber.id: (context) => const VerifiedPhoneNumber(),
            Withdraw.id: (context) => const Withdraw(),
            Profile.id: (context) => const Profile(),
            AccVerification.id: (context) => const AccVerification(),
            ChangePassword.id: (context) => const ChangePassword(),
            EditProfile.id: (context) => const EditProfile(),
            ChangePin.id: (context) => const ChangePin(),
            WalletHistory.id: (context) =>  WalletHistory()

          },
          debugShowCheckedModeBanner: false,
        ),
      );
    },
  ));
}
