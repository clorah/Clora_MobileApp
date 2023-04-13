import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectedButton extends StatelessWidget {
  // const SelectedButton({
  //   Key? key,
  // }) : super(key: key);

  SelectedButton(
      {required this.onPressed,
      required this.isWhat,
      required this.occupation});

  VoidCallback onPressed;
  bool isWhat;
  String occupation;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: const Color(0xffededf2),
        side: const BorderSide(style: BorderStyle.none),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            SizedBox(
              height: 30.h,
              width: 30.w,
              child: Transform.scale(
                scale: 1.2,
                child: Checkbox(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      color: Color(0xff3089DB),
                      width: 2.0,
                    ),
                  ),
                  onChanged: (bool? value) {
                    onPressed;
                  },
                  value: isWhat,
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              occupation,
              style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
