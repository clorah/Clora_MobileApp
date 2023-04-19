import 'package:clorah/SignUp&Login-Screen/signup-screen/verification1_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Components/dropdownbutton.dart';
import '../../constant.dart';

class VerificationScreen extends StatefulWidget {
  static const String id = 'verification_screen';

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  // const VerificationScreen({Key? key}) : super(key: key);
  String selectedItem = 'Nigeria';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff8faff),
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
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
                          'Lets get Started',
                          style: TextStyle(
                            fontSize: 24,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 50.h),
                        const Text(
                          'Country',
                          style: kTopperDisplayTextStyle,
                        ),
                        SizedBox(height: 15.h),
                        MyDropdownFormField(
                          hintText: 'Nigeria',
                          items: const ['Nigeria', 'Ghana', 'South Africa'],
                          value: selectedItem,
                          onChanged: (value) {
                            setState(() {
                              selectedItem = value!;
                            });
                          },
                        ),
                        SizedBox(height: 30.h),
                        const Text(
                          'Mobile Number',
                          style: kTopperDisplayTextStyle,
                        ),
                        SizedBox(height: 15.h),
                        TextField(
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.phone,
                          // onChanged: (value) {
                          //   //Do something with the user input.
                          //   email = value;
                          // },
                          decoration: kTextFieldDecoration.copyWith(
                            hintText: '(+234) 812 345 6789',
                          ),
                          style: kInputFieldTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () =>
                  Navigator.pushNamed(context, Verification01Screen.id),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xff288BE7),
                ),
                foregroundColor: MaterialStateProperty.all(
                  Colors.white,
                ),
                fixedSize: MaterialStateProperty.all(
                  const Size(double.infinity, 60),
                ),
                side: MaterialStateProperty.all(
                  const BorderSide(
                    width: 2.0,
                    color: Color(0xff288BE7),
                  ),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
              child: const SizedBox(
                width: double.infinity,
                child: Text(
                  'Confirm',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15.5,
                      letterSpacing: .5,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
