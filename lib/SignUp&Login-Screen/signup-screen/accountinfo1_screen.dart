import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Components/buttons_2.dart';
import '../../Components/dropdownbutton.dart';
import '../../constant.dart';
import 'accountinfo_screen.dart';

class Accountinfo1Screen extends StatefulWidget {
  static const String id = 'accountinfo1_screen';

  @override
  State<Accountinfo1Screen> createState() => _Accountinfo1ScreenState();
}

class _Accountinfo1ScreenState extends State<Accountinfo1Screen> {
  // const Accountinfo1Screen({Key? key}) : super(key: key);

  // late String selectedItem2;
  List<String> country = ['Nigeria', 'Ghana', 'South Africa'];

  // late String selectedItem3;
  List<String> city = ['Berlin', 'Tokyo', 'Lagos'];

  @override
  Widget build(BuildContext context) {
    String selectedItem2 = 'Ghana';
    String selectedItem3 = 'Lagos';
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff8faff),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15.h),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.keyboard_backspace),
                      SizedBox(height: 40.h),
                      const Text(
                        'Personal Information',
                        style: TextStyle(
                          fontSize: 24,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 50.h),
                      TextField(
                        textAlign: TextAlign.start,
                        // keyboardType: TextInputType.emailAddress,
                        // onChanged: (value) {
                        //   //Do something with the user input.
                        //   email = value;
                        // },
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Name of Hospital',
                        ),
                        style: kInputFieldTextStyle,
                      ),
                      SizedBox(height: 20.h),
                      MyDropdownFormField(
                        hintText: 'Select Country',
                        items: country,
                        value: selectedItem2,
                        onChanged: (value) {
                          setState(() {
                            selectedItem2 = value!;
                          });
                        },
                      ),
                      SizedBox(height: 20.h),
                      MyDropdownFormField(
                        hintText: 'Select City',
                        items: city,
                        value: selectedItem3,
                        onChanged: (value) {
                          setState(() {
                            selectedItem3 = value!;
                          });
                        },
                      ),
                      SizedBox(height: 20.h),
                      MyDropdownFormField(
                        hintText: 'Select City',
                        items: city,
                        value: selectedItem3,
                        onChanged: (value) {
                          setState(() {
                            selectedItem3 = value!;
                          });
                        },
                      ),
                      SizedBox(height: 60.h),
                      ScreenButton2(
                        text: 'Next',
                        onPressed: () {
                          Navigator.pushNamed(context, AccountinfoScreen.id);
                        },
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
    ;
  }
}
