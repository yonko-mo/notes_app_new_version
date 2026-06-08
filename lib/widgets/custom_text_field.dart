import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final int maxLines;
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kPrimaryColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: color ?? Colors.white),
  );
}
