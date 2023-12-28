import 'package:flutter/material.dart';
import 'package:t_store_firebase/config/theme/custom_themes/appbar_theme.dart';
import 'package:t_store_firebase/config/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:t_store_firebase/config/theme/custom_themes/checkbox_theme.dart';
import 'package:t_store_firebase/config/theme/custom_themes/chip_theme.dart';
import 'package:t_store_firebase/config/theme/custom_themes/elevated_button_theme.dart';
import 'package:t_store_firebase/config/theme/custom_themes/outlined_button_theme.dart';
import 'package:t_store_firebase/config/theme/custom_themes/text_field_theme.dart';
import 'package:t_store_firebase/config/theme/custom_themes/text_theme.dart';

class CAppTheme {
  //LIGHT THEME
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.orange,
    scaffoldBackgroundColor: Colors.white,
    textTheme: CTextTheme.lighTextTheme,
    elevatedButtonTheme: CElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: CAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: CBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: CCheckBoxTheme.lightCheckBoxTheme,
    chipTheme: CChipTheme.lightChipTheme,
    inputDecorationTheme: CTextFormFieldTheme.lightInputDecorationTheme,
    outlinedButtonTheme: COutlinedButtonTheme.lightOutlinedButtonTheme
  );

  //DARK THEME
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.orange,
    scaffoldBackgroundColor: Colors.black,
    textTheme: CTextTheme.darkTextTheme,
    elevatedButtonTheme: CElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: CAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: CBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: CCheckBoxTheme.darkCheckBoxTheme,
    chipTheme: CChipTheme.darkChipTheme,
    inputDecorationTheme: CTextFormFieldTheme.darkInputDecorationTheme,
    outlinedButtonTheme: COutlinedButtonTheme.darkOutlinedButtonTheme,
  );
}
