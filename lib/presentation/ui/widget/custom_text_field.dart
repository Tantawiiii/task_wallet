import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Color fillColor;
  final TextAlign textAlign;

  const CustomTextField({super.key,
    required this.controller,
    required this.hintText,
    this.fillColor = Colors.white,
    this.textAlign = TextAlign.center,
  }) ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 353,
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.name,
        cursorColor: Colors.black,
        textAlign: textAlign,
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          hintMaxLines: 1,
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
