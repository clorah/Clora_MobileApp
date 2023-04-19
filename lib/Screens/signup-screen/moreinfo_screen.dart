import 'package:clorah/Screens/signup-screen/verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Components/buttons_2.dart';
import '../../Components/selectedbutton.dart';

class SelectcategoryScreen extends StatelessWidget {
  // const SelectcategoryScreen({Key? key}) : super(key: key);

  static const String id = 'selectcategory_screen';

  //symmetric(vertical: 25.h, horizontal: 10.w)
  //Color(0xfff8faff)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3089DB),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // SizedBox(height: 20.h),
          // size: 30,
          // color: Colors.white,
          Padding(
            padding: EdgeInsets.only(top: 60.h, left: 10.w, right: 10.w),
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
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: Color(0xfff8faff),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 70.0, horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // SizedBox(
                  //   height: 20.h,
                  // ),
                  const Text(
                    'Select Category',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  // Container(),
                  SelectedButton(
                    onPressed: () => null,
                    isWhat: true,
                    occupation: 'Hospital/Clinic',
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  SelectedButton(
                    onPressed: () => null,
                    isWhat: false,
                    occupation: 'Doctor',
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  SelectedButton(
                    onPressed: () => null,
                    isWhat: false,
                    occupation: 'Individual',
                  ),
                  SizedBox(
                    height: 45.h,
                  ),
                  ScreenButton2(
                    text: 'Create an Account',
                    onPressed: () {
                      Navigator.pushNamed(context, VerificationScreen.id);
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
