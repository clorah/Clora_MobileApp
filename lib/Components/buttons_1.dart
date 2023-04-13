import 'package:flutter/material.dart';

class ScreenButton1 extends StatelessWidget {
  // const ScreenButton1({
  //   Key? key,
  // }) : super(key: key);
  ScreenButton1(
      {required this.color, required this.buttonText, this.onPressed});

  final Color color;
  final String buttonText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(30.0),
      elevation: 5.0,
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: 200.0,
        height: 42.0,
        child: Text(
          buttonText,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
