import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Components/downbutton.dart';

class AccountProfile extends StatelessWidget {
  // const AccountProfile({Key? key}) : super(key: key);

  static const String id = 'accountprofile_screen';

  AccountProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8faff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              color: Color(0xff3089DB),
            ),
            height: 180.h,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(top: 110.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12.h,
                  ),
                  const Text(
                    'Profile',
                    style: TextStyle(
                        fontSize: 27,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              // SizedBox(
              //   height: 60.h,
              // ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Full Name',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Details(
                    detail: 'Jane Jessica',
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const Text(
                    'Category',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Details(
                    detail: 'Individual',
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const Text(
                    'Email Address',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Details(
                    detail: 'email@gmail.com',
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const Text(
                    'Country',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Details(
                    detail: 'Nigeria',
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const Text(
                    'City',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Details(
                    detail: 'Lagos',
                  ),
                ],
              ),
            ),
          ),
          DownButtons(),
        ],
      ),
    );
  }
}

class Details extends StatelessWidget {
  // const Details({
  //   Key? key,
  // }) : super(key: key);
  Details({Key? key, required this.detail}) : super(key: key);

  late String detail;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffE5E5E5).withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            detail,
            textAlign: TextAlign.start,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
