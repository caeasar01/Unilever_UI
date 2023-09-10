import 'package:flutter/material.dart';
import 'package:unilever_app/src/Utils/theme/color_theme.dart';
import 'package:unilever_app/src/Utils/theme/text_theme.dart';

class AppTheme{
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    primaryColor: AppColorTheme.darkColorTheme.primary
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: AppTextTheme.darkTextTheme,
    primaryColor: AppColorTheme.darkColorTheme.primary
  );
}