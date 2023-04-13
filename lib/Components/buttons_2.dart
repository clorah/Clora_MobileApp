import 'package:flutter/material.dart';

class ScreenButton2 extends StatelessWidget {
  ScreenButton2({required this.text, required this.onPressed});

  late String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
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
        elevation: MaterialStateProperty.all(3),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        side: MaterialStateProperty.all(
          const BorderSide(
            width: 2.0,
            color: Color(0xff288BE7),
          ),
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 15.5, letterSpacing: .5, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
