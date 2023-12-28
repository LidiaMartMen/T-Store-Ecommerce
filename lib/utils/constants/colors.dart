import 'package:flutter/material.dart';

class CColors {
  //APP BASIC COLORS:
  static const Color primary = Color.fromARGB(255, 255, 186, 75);
  static const Color secondary = Color.fromARGB(255, 231, 156, 35);
  static const Color accent = Color.fromARGB(255, 255, 161, 11);

  //GRADIENT COLORS:
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
    Color.fromARGB(255, 255, 188, 154),
    Color.fromARGB(255, 253, 206, 182),
    Color.fromARGB(255, 252, 226, 214),
  ]);

  //TEXT COLORS:
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C7570);
  static const Color textWhite = Colors.white;

  //BACKGROUND COLORS:
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color.fromARGB(255, 255, 252, 243);

  //BACKGROUND CONTAINER COLORS:
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = CColors.white.withOpacity(0.1);

  //BUTTON COLORS:
  static const Color buttonPrimary = Color.fromARGB(255, 255, 195, 75);
  static const Color buttonSecondary = Color.fromARGB(255, 246, 175, 35);
  static const Color buttonDisabled = Color.fromARGB(255, 248, 206, 123);

  //BORDER COLORS:
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  //ERROR AND VALIDATION COLORS:
  static const Color error = Color.fromARGB(255, 152, 37, 37);
  static const Color success = Color.fromARGB(255, 42, 141, 46);
  static const Color warning = Color.fromARGB(255, 216, 109, 1);
  static const Color info = Color.fromARGB(255, 14, 77, 140);

  //NEUTRAL SHADES:
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
