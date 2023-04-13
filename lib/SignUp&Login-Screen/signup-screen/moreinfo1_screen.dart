import 'package:clorah/SignUp&Login-Screen/signup-screen/successcard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Components/selectedbutton.dart';

class Selectcategory01Screen extends StatelessWidget {
  // const Selectcategory01Screen({Key? key}) : super(key: key);
  static const String id = 'selectcategory1_screen';

  final titles = [
    "List 1",
    "List 2",
    "List 3",
    "List 4",
    "List 5",
    "List 6",
    "List 7",
    "List 8",
    "List 9",
  ];
  final subtitles = [
    {'boolVal': true, 'occupation': 'Surgery'},
    {'boolVal': false, 'occupation': 'Pharmacy'},
    {'boolVal': false, 'occupation': 'Dentistry'},
    {'boolVal': false, 'occupation': 'Optometry'},
    {'boolVal': false, 'occupation': 'Physiotherapy'},
    {'boolVal': false, 'occupation': 'Dermatology'},
    {'boolVal': false, 'occupation': 'ENT'},
    {'boolVal': false, 'occupation': 'Gynecology'},
    {'boolVal': false, 'occupation': 'Neurology'},
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
            child: const Icon(
              Icons.keyboard_backspace,
              size: 30,
              color: Colors.white,
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
                  const EdgeInsets.symmetric(vertical: 50.0, horizontal: 25.0),
              child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return SelectedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, SuccessCard.id),
                      isWhat: false,
                      occupation: 'Hospital/Clinic',
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(height: 25.0),
                  itemCount: 10),
            ),
            // SizedBox(
            //   height: 50.h,
            // ),
          ),
          // child: ListView(
          //   padding: const EdgeInsets.all(8),
          //   children: const <Widget>[
          //
          //     ListTile(
          //         title: Text("Battery Full"),
          //         leading: Icon(Icons.battery_full),
          //         trailing: Icon(Icons.star)),
          //     ListTile(
          //         title: Text("Anchor"),
          //         leading: Icon(Icons.anchor),
          //         trailing: Icon(Icons.star)),
          //     ListTile(
          //         title: Text("Alarm"),
          //         leading: Icon(Icons.access_alarm),
          //         trailing: Icon(Icons.star)),
          //     ListTile(
          //         title: Text("Ballot"),
          //         leading: Icon(Icons.ballot),
          //         trailing: Icon(Icons.star))
          //   ],
          // ),
        ],
      ),
    );
  }
}

// SelectedButton(
// onPressed: () => null,
// isWhat: true,
// occupation: 'Hospital/Clinic',
// ),
// SizedBox(
// height: 25.h,
// ),
// SelectedButton(
// onPressed: () => null,
// isWhat: false,
// occupation: 'Doctor',
// ),
// SizedBox(
// height: 25.h,
// ),
// SelectedButton(
// onPressed: () => null,
// isWhat: false,
// occupation: 'Individual',
// ),
