import 'package:clorah/Components/signup_page.dart';
import 'package:clorah/SignUp&Login-Screen/login-screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Components/buttons_2.dart';
import '../../constant.dart';

class LoginScreen extends StatelessWidget {
  // const LoginScreen({Key? key}) : super(key: key);

  static const String id = 'login_screen';
  //.symmetric(vertical: 30.h, horizontal: 10.w)

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff8faff),
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.only(top: 10.h, left: 10.h, right: 10.h),
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
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10.h),
                    const Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 24,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    const Padding(
                      padding: EdgeInsets.only(right: 55),
                      child: Text(
                        'Welcome! Enter your mail id and password to sign in',
                        style: TextStyle(
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff959191),
                            height: 1.2),
                      ),
                    ),
                    SizedBox(height: 40.h),
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
                        const Text(
                          'Remember me',
                          style: kPageText,
                        ),
                        const Spacer(),
                        Text(
                          'Forgot Password?',
                          style: kPageText.copyWith(
                              color: const Color(0xffF8A425)),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.h),
                    ScreenButton2(
                      text: 'Sign In',
                      onPressed: () {
                        null;
                      },
                    ),
                    SizedBox(height: 40.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 45,
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 3.h,
                            color: const Color(0xffEEECEC),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text('OR'),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 3.h,
                            color: const Color(0xffEEECEC),
                          ),
                        ),
                        const SizedBox(
                          width: 45,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: null,
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xffF4F4F4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 16),
                              child: Image.asset(
                                  'assets/images/signup-login/Google_svg.png'),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: null,
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xffF4F4F4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 19),
                              child: Image.asset(
                                  'assets/images/signup-login/Apple_svg.png'),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: null,
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xffF4F4F4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 9, horizontal: 14),
                              child: Image.asset(
                                  'assets/images/signup-login/Facebook_svg.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: ToSignupPage(
                    text1: 'Don\'t have an account?',
                    text2: 'Sign Up',
                    onPressed: () {
                      Navigator.pushNamed(context, SignupScreen.id);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
