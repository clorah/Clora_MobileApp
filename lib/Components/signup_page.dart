import 'package:clorah/constant.dart';
import 'package:flutter/material.dart';

class ToSignupPage extends StatelessWidget {
  ToSignupPage(
      {required this.text1, required this.text2, required this.onPressed});

  late String text1;
  late String text2;
  late VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1, style: kPageText),
        TextButton(
          onPressed: onPressed,
          child: Text(
            text2,
            style: kPageText.copyWith(
              color: const Color(0xff288BE7),
            ),
          ),
        ),
      ],
    );
  }
}
