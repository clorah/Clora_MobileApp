import 'package:clorah/constant.dart';
import 'package:flutter/material.dart';

class MyDropdownFormField extends StatelessWidget {
  final String hintText;
  final List<String> items;
  final String value;
  final Function(String?) onChanged;

  MyDropdownFormField({
    required this.hintText,
    required this.items,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: kTextFieldDecoration.copyWith(
        hoverColor: null,
        fillColor: null,
        focusColor: null,
        hintText: hintText,
        suffixIcon: const Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Icon(
            Icons.keyboard_arrow_down,
            size: 34,
            color: Colors.black,
          ),
        ),
      ),
      items: items
          .map(
            (item) => DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            ),
          )
          .toList(),
      value: value,
      onChanged: onChanged,
      icon: const SizedBox.shrink(), // This hides the default dropdown icon
    );
  }
}
