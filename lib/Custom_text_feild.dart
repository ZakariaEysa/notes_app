import 'package:flutter/material.dart';
import 'package:notes_app/constans.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      hintText: 'Title',
      hintStyle: TextStyle(color: primaryColor),
      border: buildBorder(),
      enabledBorder: buildBorder(),
      focusedBorder: buildBorder(primaryColor),
    ));
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ));
}
