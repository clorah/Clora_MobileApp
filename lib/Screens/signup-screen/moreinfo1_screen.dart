import 'package:clorah/Screens/signup-screen/successcard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Components/selectedbutton.dart';

class Selectcategory01Screen extends StatelessWidget {
  // const Selectcategory01Screen({Key? key}) : super(key: key);
  static const String id = 'selectcategory1_screen';

  final List _subtitle1 = [
    {'occupation': 'Surgery', 'isWhat': true},
    {'occupation': 'Pharmacy', 'isWhat': false},
    {'occupation': 'Dentistry', 'isWhat': false},
    {'occupation': 'Optometry', 'isWhat': false},
    {'occupation': 'Physiotherapy', 'isWhat': false},
    {'occupation': 'Dermatology', 'isWhat': false},
    {'occupation': 'ENT', 'isWhat': false},
    {'occupation': 'Gynecology', 'isWhat': false},
    {'occupation': 'Neurology', 'isWhat': false}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3089DB),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // SizedBox(height: 20.h),
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
            height: 600.h,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Area of Specialization',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.separated(
                        itemBuilder: (BuildContext context, int index) {
                          return SelectedButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, SuccessCard.id),
                            isWhat: _subtitle1[index]['isWhat'],
                            occupation:
                                _subtitle1[index]['occupation'].toString(),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(height: 25.0),
                        itemCount: _subtitle1.length),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
