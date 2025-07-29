import 'package:flutter/material.dart';

const Color bluishColor = Color(0xFF4e5ae8);
const Color yellowColor = Color(0xFFFCC419);
const Color darkGreyColor = Color(0xFF121212);
const Color lightGreyColor = Color(0xFFF1F1F1);
const Color primaryColor = Color(0xFF4e5ae8);
const Color secondaryColor = Color(0xFFFCC419);

class AppTheme {
  static final light = ThemeData(
    primaryColor: Colors.deepOrangeAccent,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(backgroundColor: const Color.fromARGB(255, 78, 232, 232)),
  );

  static final dark = ThemeData(
    primaryColor: Colors.grey,
    brightness: Brightness.dark,

  );
}
