import 'package:flutter/material.dart';
import 'package:unilever_app/src/Utils/theme/color_theme.dart';

class AppElevatedButtonTheme{
  static ElevatedButtonThemeData lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      side: BorderSide(color: AppColorTheme.lightColorTheme.primary),
      shape: const CircleBorder(),
    ),
  );

  static ElevatedButtonThemeData darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      side: BorderSide(color: AppColorTheme.lightColorTheme.primary),
      shape: const CircleBorder(),
    ),
  );
}