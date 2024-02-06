import 'package:ecommerce_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightThemeData = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.purple,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
  );
  static ThemeData darkThemeData = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.purple,
    textTheme: AppTextTheme.darkTextTheme,
  );
}
