import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextFields extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final Icon myIcon;
  const MyTextFields(
      {super.key,
      required this.hintText,
      required this.obscureText,
      required this.controller,
      required this.myIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: myIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        filled: true,
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
          color: Colors.grey,
        ),
      ),
    );
  }
}
