library downbutton;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

export 'downbutton.dart';

class DownButtons extends StatelessWidget {
  // const DownButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 80.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, -2), // this is for top shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MButton(
              icons: Icons.home_outlined,
              text: 'Home',
              onPressed: () {
                null;
              },
            ),
            MButton(
              icons: Icons.date_range_outlined,
              text: 'Appointments',
              onPressed: () {
                null;
              },
            ),
            MButton(
              icons: Icons.chat_outlined,
              text: 'Chats',
              onPressed: () {
                null;
              },
            ),
            MButton(
              icons: Icons.person,
              text: 'Account',
              onPressed: () {
                null;
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MButton extends StatelessWidget {
  // const MButton({
  //   Key? key,
  // }) : super(key: key);
  MButton({required this.onPressed, required this.text, required this.icons});

  final VoidCallback onPressed;
  final String text;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      height: 50.h,
      minWidth: 90.w,
      child: Column(
        children: [
          Center(
            child: Icon(
              icons,
              size: 28,
              color: const Color(0xff3089DB),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: Color(0xff3089DB),
            ),
          ),
        ],
      ),
    );
  }
}
