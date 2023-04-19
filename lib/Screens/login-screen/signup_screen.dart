import 'package:clorah/Screens/signup-screen/login_screen.dart';
import 'package:clorah/Screens/signup-screen/moreinfo_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Components/buttons_2.dart';
import '../../Components/signup_page.dart';
import '../../constant.dart';

class SignupScreen extends StatelessWidget {
  static const String id = 'signup_screen';
  // const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff8faff),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 10.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    splashFactory: NoSplash.splashFactory,
                  ),
                  child: const Icon(Icons.keyboard_backspace),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 40.h),
                      const Text(
                        'Create an Account',
                        style: TextStyle(
                          fontSize: 24,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 50.h),
                      TextField(
                        textAlign: TextAlign.start,
                        keyboardType: TextInputType.emailAddress,
                        // onChanged: (value) {
                        //   //Do something with the user input.
                        //   email = value;
                        // },
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Email Address',
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Icon(Icons.email_outlined),
                          ),
                        ),
                        style: kInputFieldTextStyle,
                      ),
                      SizedBox(height: 20.h),
                      TextField(
                        textAlign: TextAlign.start,
                        obscureText: true,
                        // onChanged: (value) {
                        //   //Do something with the user input.
                        //   password = value;
                        // },
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Password',
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Icon(Icons.key),
                          ),
                          suffixIcon: const Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(Icons.visibility_off),
                          ),
                        ),
                        style: kInputFieldTextStyle,
                      ),
                      SizedBox(height: 20.h),
                      TextField(
                        textAlign: TextAlign.start,
                        obscureText: true,
                        // onChanged: (value) {
                        //   //Do something with the user input.
                        //   password = value;
                        // },
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Confirm Password',
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Icon(Icons.key),
                          ),
                          suffixIcon: const Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(Icons.visibility_off),
                          ),
                        ),
                        style: kInputFieldTextStyle,
                      ),
                      SizedBox(height: 25.h),
                      Row(
                        children: [
                          SizedBox(
                            height: 20.h,
                            width: 20.w,
                            child: Checkbox(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              onChanged: (bool? value) {},
                              value: false,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 50.0),
                              child: Text(
                                'I agree to the terms & conditions and privacy policy of Clora',
                                style: kPageText.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40.h),
                      ScreenButton2(
                        text: 'Create an Account',
                        onPressed: () {
                          Navigator.pushNamed(context, SelectcategoryScreen.id);
                        },
                      ),
                    ],
                  ),
                ),
                Center(
                  child: ToSignupPage(
                    text1: 'Already have an account?',
                    text2: 'Sign In',
                    onPressed: () =>
                        Navigator.pushNamed(context, LoginScreen.id),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
