import 'package:flutter/material.dart';

const kHintDisplayTextStyle = TextStyle(
  fontSize: 16.0,
  color: Colors.grey,
);

const kNumberHintFieldDisplayTextStyle = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.w500,
  color: Colors.black,
);

const kTopperDisplayTextStyle = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 12.5,
  color: Colors.grey,
);

const kInputFieldTextStyle = TextStyle(fontSize: 16.0, color: Colors.black);

const kTextFieldDecoration = InputDecoration(
  hintText: 'A value',
  hintStyle: kHintDisplayTextStyle,
  contentPadding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 24.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 1.0),
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  ),
);

const kNumberFieldDecoration = InputDecoration(
  hintText: '5',
  hintStyle: kNumberHintFieldDisplayTextStyle,
  contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 14.0),
  filled: true,
  fillColor: Color(0xfff3f3fc),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(style: BorderStyle.none),
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  ),
);

const kPageText = TextStyle(
    fontSize: 15.5,
    letterSpacing: .5,
    fontWeight: FontWeight.w500,
    color: Colors.grey);
