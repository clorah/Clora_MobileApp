import 'package:clorah/Screens/login-screen/signup_screen.dart';
import 'package:clorah/Screens/signup-screen/login_screen.dart';
import 'package:flutter/material.dart';
import '../../Components/buttons_2.dart';
import '../../Components/signup_page.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome_screen';
  // const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8faff),
      body: Center(
        child: Container(
          height: 550.00,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.elliptical(225, 100),
            ),
            color: Color(0xffFDFEFF),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child:
                    Image.asset('assets/images/signup-login/clora-image.png'),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ScreenButton2(
                  text: 'Get Started',
                  onPressed: () {
                    Navigator.pushNamed(context, SignupScreen.id);
                  },
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ToSignupPage(
                text2: 'Login',
                text1: 'Already have an Account?',
                onPressed: () => Navigator.pushNamed(context, LoginScreen.id),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
