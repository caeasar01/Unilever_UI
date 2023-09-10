import 'package:flutter/material.dart';
import 'package:unilever_app/src/Utils/theme/color_theme.dart';

class AppOutlineButtonTheme{
  static OutlinedButtonThemeData lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      side: BorderSide(color: AppColorTheme.lightColorTheme.secondary ),
      shape: const CircleBorder(), 
    ),
  );

  static OutlinedButtonThemeData darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      side:  BorderSide(color: AppColorTheme.lightColorTheme.secondary),
      shape: const CircleBorder(),
    ),
  );

}