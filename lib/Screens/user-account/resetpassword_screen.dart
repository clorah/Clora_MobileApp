import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Components/buttons_2.dart';
import '../../Components/downbutton.dart';

class ResetPassword extends StatelessWidget {
  // const ResetPassword({Key? key}) : super(key: key);

  static const String id = 'resetpassword_screen';

  String mail = 'email@gmail.com';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff8faff),
        body: Padding(
          padding: EdgeInsets.only(top: 80.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        splashFactory: NoSplash.splashFactory,
                      ),
                      child: const Icon(
                        Icons.keyboard_backspace,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    'Reset Password',
                    style: TextStyle(
                      fontSize: 24,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                          'assets/images/signup-login/Messages-rafiki.png'),
                      SizedBox(height: 15.h),
                      const Text(
                        'Confirm your Email Address',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                          color: Color(0xff545454),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      const Text(
                        'We sent confirmation email to;',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color(0xff343232)),
                      ),
                      Text(
                        mail,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color(0xff288BE7),
                        ),
                      ),
                      const Text(
                        'Check your email and click on the',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xff343232),
                        ),
                      ),
                      const Text(
                        'confirmation link to continue.',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xff343232),
                        ),
                      ),
                      // SizedBox(height: 50.h),
                      // SizedBox(height: 50.h),
                      ScreenButton2(
                        text: 'Add',
                        onPressed: () {
                          // Navigator.pushNamed(context, SelectcategoryScreen.id);
                          null;
                        },
                      ),
                      // SizedBox(height: 70.h),
                      // SizedBox(height: 50.h),
                    ],
                  ),
                ),
              ),
              DownButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
