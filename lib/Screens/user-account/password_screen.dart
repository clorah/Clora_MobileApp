import 'package:clorah/Screens/user-account/resetpassword_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Components/buttons_2.dart';
import '../../Components/downbutton.dart';
import '../../constant.dart';

class PasswordScreen extends StatelessWidget {
  // const PasswordScreen({Key? key}) : super(key: key);

  static const String id = 'passwords_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff8faff),
        resizeToAvoidBottomInset: false,
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
                    'Change Password',
                    style: TextStyle(
                      fontSize: 24,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20.h),
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
                          hintText: 'Current Password',
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
                          hintText: 'New Password',
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
                          hintText: 'Confirm New Password',
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
                      SizedBox(height: 50.h),
                      ScreenButton2(
                        text: 'Continue',
                        onPressed: () {
                          Navigator.pushNamed(context, ResetPassword.id);
                        },
                      ),
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

// child: Scaffold(
// backgroundColor: const Color(0xfff8faff),
// resizeToAvoidBottomInset: false,
// body: Form(
// key: _formKey,
// child: Padding(
// padding: EdgeInsets.only(top: 80.h),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Row(
// children: [
// Padding(
// padding: const EdgeInsets.only(left: 8),
// child: TextButton(
// onPressed: () {
// Navigator.pop(context);
// },
// style: TextButton.styleFrom(
// minimumSize: Size.zero,
// padding: EdgeInsets.zero,
// tapTargetSize: MaterialTapTargetSize.shrinkWrap,
// splashFactory: NoSplash.splashFactory,
// ),
// child: const Icon(
// Icons.keyboard_backspace,
// color: Colors.black,
// ),
// ),
// ),
// const SizedBox(
// width: 15,
// ),
// const Text(
// 'Change Password',
// style: TextStyle(
// fontSize: 24,
// fontStyle: FontStyle.normal,
// fontWeight: FontWeight.w500,
// ),
// ),
// ],
// ),
// Expanded(
// child: Padding(
// padding: EdgeInsets.symmetric(horizontal: 25.w),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// TextFormField(
// textAlign: TextAlign.start,
// keyboardType: TextInputType.emailAddress,
// validator: (value) {
// if (value.isEmpty) {
// return 'Please enter an email address';
// }
// if (!EmailValidator.validate(value)) {
// return 'Please enter a valid email address';
// }
// return null;
// },
// onSaved: (value) {
// _email = value;
// },
// decoration: kTextFieldDecoration.copyWith(
// hintText: 'Email Address',
// prefixIcon: const Padding(
// padding: EdgeInsets.only(left: 20, right: 20),
// child: Icon(Icons.email_outlined),
// ),
// ),
// style: kInputFieldTextStyle,
// ),
// SizedBox(height: 20.h),
// TextFormField(
// textAlign: TextAlign.start,
// obscureText: true,
// validator: (value) {
// if (value.isEmpty) {
// return 'Please enter your current password';
// }
// return null;
// },
// onSaved: (value) {
// _currentPassword = value;
// },
// decoration: kTextFieldDecoration.copyWith(
// hintText: 'Current Password',
// prefixIcon: const Padding(
// padding: EdgeInsets.only(left: 20, right: 20),
// child: Icon(Icons.key),
// ),
// suffixIcon: const Padding(
// padding: EdgeInsets.only(right: 10),
// child: Icon(Icons.visibility_off),
// ),
// ),
// style: kInputFieldTextStyle,
// ),
