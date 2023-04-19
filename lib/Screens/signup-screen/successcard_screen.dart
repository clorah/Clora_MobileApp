import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:modal_progress_hud/modal_progress_hud.dart';

class SuccessCard extends StatelessWidget {
  // const SuccessCard({Key? key}) : super(key: key);
  static const String id = 'successcard_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff288BE7),
        body: Center(
          /** Card Widget **/
          child: Card(
            elevation: 50,
            shadowColor: Colors.black,
            color: const Color(0xfff8faff),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            child: SizedBox(
              width: 300.w,
              height: 520.h,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    const Icon(
                      Icons.check_circle,
                      size: 110,
                      color: Color(0xff3089DB),
                    ),
                    SizedBox(
                      height: 30.h,
                    ), //SizedBox
                    const Text(
                      'Congratulations',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff3089DB),
                        fontWeight: FontWeight.w500,
                      ), //Textstyle
                    ), //Text
                    SizedBox(
                      height: 20.h,
                    ), //SizedBox
                    const Text(
                      'Your account is ready to use.\n You\'ll be redirected to the home \n screen in few seconds',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ), //Text
                    SizedBox(
                      height: 50.h,
                    ), //SizedBox
                    // ModalProgressHUD(inAsyncCall: true, child: null),
                    const CupertinoActivityIndicator(
                      radius: 30.0,
                      color: CupertinoColors.activeBlue,
                      animating: true,
                    ), //SizedBox
                  ],
                ), //Column
              ), //Padding
            ), //SizedBox
          ), //Card
        ),
      ),
    );
  }
}
