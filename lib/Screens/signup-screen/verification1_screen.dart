import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant.dart';
import 'accountinfo1_screen.dart';

class Verification01Screen extends StatefulWidget {
  // const Verification01Screen({Key? key}) : super(key: key);

  static const String id = 'verification1_screen';

  @override
  State<Verification01Screen> createState() => _Verification01ScreenState();
}

class _Verification01ScreenState extends State<Verification01Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff8faff),
        // resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 10.w),
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
                  child: const Icon(
                    Icons.keyboard_backspace,
                    size: 30,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 40.h),
                      const Text(
                        'Verify Mobile Number',
                        style: TextStyle(
                          fontSize: 24,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 50.h),
                      Text(
                        'Enter Verification Code',
                        style: kTopperDisplayTextStyle.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 75.w,
                            child: TextField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.phone,
                              // onChanged: (value) {
                              //   //Do something with the user input.
                              //   email = value;
                              // },
                              decoration: kNumberFieldDecoration.copyWith(
                                hintText: '4',
                              ),
                              style: kNumberHintFieldDisplayTextStyle,
                            ),
                          ),
                          SizedBox(
                            width: 75.w,
                            child: TextField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.phone,
                              // onChanged: (value) {
                              //   //Do something with the user input.
                              //   email = value;
                              // },
                              decoration: kNumberFieldDecoration.copyWith(
                                hintText: '2',
                              ),
                              style: kNumberHintFieldDisplayTextStyle,
                            ),
                          ),
                          SizedBox(
                            width: 75.w,
                            child: TextField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.phone,
                              // onChanged: (value) {
                              //   //Do something with the user input.
                              //   email = value;
                              // },
                              decoration: kNumberFieldDecoration.copyWith(
                                hintText: '8',
                              ),
                              style: kNumberHintFieldDisplayTextStyle,
                            ),
                          ),
                          SizedBox(
                            width: 75.w,
                            child: TextField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.phone,
                              // onChanged: (value) {
                              //   //Do something with the user input.
                              //   email = value;
                              // },
                              decoration: kNumberFieldDecoration.copyWith(
                                hintText: '4',
                              ),
                              style: kNumberHintFieldDisplayTextStyle,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 100.h),
                      Text(
                        'We texted code to +234 812 345 6789',
                        style: kTopperDisplayTextStyle.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0,
                          color: Color(0xff6B6A6A),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.all(0),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, Accountinfo1Screen.id);
                            },
                            child: Text(
                              'Resend',
                              textAlign: TextAlign.start,
                              style: kPageText.copyWith(
                                color: const Color(0xff288BE7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            '15s',
                            style: kPageText.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
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
