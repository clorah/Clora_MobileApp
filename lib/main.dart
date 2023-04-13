import 'package:clorah/SignUp&Login-Screen/login-screen/welcome_screen.dart';
import 'package:clorah/SignUp&Login-Screen/signup-screen/accountinfo1_screen.dart';
import 'package:clorah/SignUp&Login-Screen/signup-screen/accountinfo2_screen.dart';
import 'package:clorah/SignUp&Login-Screen/signup-screen/accountinfo_screen.dart';
import 'package:clorah/SignUp&Login-Screen/signup-screen/login_screen.dart';
import 'package:clorah/SignUp&Login-Screen/signup-screen/moreinfo_screen.dart';
import 'package:clorah/SignUp&Login-Screen/signup-screen/successcard_screen.dart';
import 'package:clorah/SignUp&Login-Screen/signup-screen/verification1_screen.dart';
import 'package:clorah/SignUp&Login-Screen/signup-screen/verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'SignUp&Login-Screen/login-screen/signup_screen.dart';
import 'SignUp&Login-Screen/signup-screen/moreinfo1_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        splitScreenMode: true,
        minTextAdapt: true,
        builder: (context, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: WelcomeScreen.id,
            theme: ThemeData(
              // primarySwatch: Colors.blue,
              fontFamily: 'Inter',
            ),
            routes: {
              WelcomeScreen.id: (context) => WelcomeScreen(),
              LoginScreen.id: (context) => LoginScreen(),
              SignupScreen.id: (context) => SignupScreen(),
              AccountinfoScreen.id: (context) => AccountinfoScreen(),
              Accountinfo1Screen.id: (context) => Accountinfo1Screen(),
              Accountinfo2Screen.id: (context) => Accountinfo2Screen(),
              VerificationScreen.id: (context) => VerificationScreen(),
              SelectcategoryScreen.id: (context) => SelectcategoryScreen(),
              Verification01Screen.id: (context) => Verification01Screen(),
              Selectcategory01Screen.id: (context) => Selectcategory01Screen(),
              SuccessCard.id: (context) => SuccessCard(),
              // ChatScreen.id: (context) => ChatScreen(),
              // RegistrationScreen.id: (context) => RegistrationScreen(),
            },
          );
        });
  }
}
