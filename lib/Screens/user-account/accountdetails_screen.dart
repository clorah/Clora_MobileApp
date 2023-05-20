import 'package:clorah/Screens/user-account/password_screen.dart';
import 'package:clorah/Screens/user-account/shareapp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:clorah/Components/switcher.dart';
import 'package:clorah/Components/downbutton.dart';

import 'accountprofile_screen.dart';

class AccountDetails extends StatelessWidget {
  // const AccountDetails({Key? key}) : super(key: key);

  static const String id = 'accountdetails_screen';

  //Color(0xff3089DB)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8faff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  color: Color(0xff3089DB),
                ),
                height: 380.h,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 80.h),
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
                      SizedBox(
                        height: 100.h,
                      ),
                      const Text(
                        'Jane Jessica',
                        style: TextStyle(
                            fontSize: 26,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        // color: Colors.lightBlueAccent,
                        width: double.infinity,
                        height: 115.h,
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Positioned(
                              left: 5,
                              bottom: -50,
                              child: Image.asset(
                                  'assets/images/signup-login/girl.png',
                                  height: 130.h,
                                  width: 130.w),
                            ),
                            Positioned(
                              left: 70,
                              bottom: -55,
                              child: Container(
                                height: 45.h,
                                width: 45.w,
                                decoration: const BoxDecoration(
                                  /*** The BorderRadius widget  is here ***/
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: CircleAvatar(
                                    backgroundColor: Color(0xff3089DB),
                                    radius: 16,
                                    child: Icon(
                                      Icons.photo_camera_rounded,
                                      size: 22,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 5,
                              bottom: -25,
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xfff8faff),
                                      width: 4.0,
                                      style: BorderStyle.solid), //Border.all
                                  /*** The BorderRadius widget  is here ***/
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                  color: const Color(0xfff8faff),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: CircleAvatar(
                                    backgroundColor: Color(0xffF7A01D),
                                    radius: 18,
                                    child: Icon(
                                      Icons.edit,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60.h,
          ),
          Expanded(
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              padding: EdgeInsets.zero,
              children: [
                InkButton(
                  icon1: Icons.person_outline,
                  onTap: () {
                    Navigator.pushNamed(context, AccountProfile.id);
                  },
                  text1: 'About Me',
                  icon2: Icons.arrow_forward_ios,
                  switchVal: false,
                ),
                Divider(
                  height: 3.h,
                  thickness: 2,
                ),
                InkButton(
                  icon1: Icons.key,
                  onTap: () {
                    Navigator.pushNamed(context, PasswordScreen.id);
                  },
                  text1: 'Change Password',
                  icon2: Icons.arrow_forward_ios,
                  switchVal: false,
                ),
                Divider(
                  height: 3.h,
                  thickness: 2,
                ),
                InkButton(
                  icon1: Icons.notifications_none_outlined,
                  onTap: () {
                    null;
                  },
                  text1: 'Notifications',
                  switchVal: true,
                ),
                Divider(
                  height: 3.h,
                  thickness: 2,
                ),
                InkButton(
                  icon1: Icons.verified_user_outlined,
                  onTap: () {
                    null;
                  },
                  text1: 'Privacy and Security',
                  icon2: Icons.arrow_forward_ios,
                  switchVal: false,
                ),
                Divider(
                  height: 3.h,
                  thickness: 2,
                ),
                InkButton(
                  icon1: Icons.share_outlined,
                  onTap: () {
                    Navigator.pushNamed(context, ShareAppScreen.id);
                  },
                  text1: 'Share App',
                  icon2: Icons.arrow_forward_ios,
                  switchVal: false,
                ),
              ],
            ),
          ),
          DownButtons(),
        ],
      ),
    );
  }
}

class InkButton extends StatelessWidget {
  // const InkButton({
  //   Key? key,
  // }) : super(key: key);

  InkButton(
      {required this.icon1,
      this.icon2,
      required this.text1,
      required this.onTap,
      required this.switchVal});

  final VoidCallback onTap;
  final IconData icon1;
  final String text1;
  final IconData? icon2;
  final bool switchVal;

  @override
  Widget build(BuildContext context) {
    bool switcher = switchVal;
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon1,
              size: 30,
              color: Colors.black,
            ),
            SizedBox(
              width: 10.h,
            ),
            Expanded(
              child: Text(
                text1,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            switcher
                ? const SwitchExample()
                : Icon(
                    icon2,
                    size: 23,
                    color: Colors.black,
                  ),
          ],
        ),
      ),
    );
  }
}
