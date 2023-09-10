import 'package:flutter/material.dart';

class AppColorTheme{
  AppColorTheme._();

  static ColorScheme lightColorTheme = const ColorScheme.light(
    primary: Color(0xff071775),
    onPrimary: Colors.white,
    secondary: Color(0xffE12E58),
    onSecondary: Colors.white,
    background: Colors.white24
  );

  static ColorScheme darkColorTheme = const ColorScheme.dark(
    primary: Color(0xff071775),
    secondary: Color(0xffE12E58),
  );
}

class AppColorThemeII{
  AppColorThemeII._();

  static ThemeData lightColorTheme = ThemeData(
    primarySwatch: const MaterialColor(
  0xff071775, <int, Color>{}),
  ) ;
}

