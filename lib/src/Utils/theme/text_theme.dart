import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unilever_app/src/Utils/theme/color_theme.dart';

class AppTextTheme{
  AppTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: GoogleFonts.montserrat(
      fontSize: 20,
      color: Colors.black12,
    ),
    headlineMedium: GoogleFonts.montserrat(
      fontSize: 15,
      color: Colors.blueGrey,
    ),

    displayLarge: GoogleFonts.roboto(
      fontSize: 35,
      color: Colors.blueGrey,
    ),
    displayMedium: GoogleFonts.roboto(
      fontSize:20,
      color: Colors.blueGrey,
    ),
    displaySmall: GoogleFonts.roboto(
      fontSize: 10,
      color: Colors.blueGrey
    ),

    titleMedium:  GoogleFonts.robotoFlex(
      fontSize: 15,
      color: AppColorTheme.lightColorTheme.secondary,
    ),
    titleLarge: GoogleFonts.robotoFlex(
      fontSize: 20,
      color: Colors.white,
    ),
    titleSmall: GoogleFonts.robotoFlex(
      fontSize: 10,
      color: Colors.white,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: GoogleFonts.montserrat(
      fontSize: 20,
      color: Colors.white,
    ),
    headlineMedium: GoogleFonts.montserrat(
      fontSize: 15,
      color: Colors.grey,
    ),

    displayLarge: GoogleFonts.roboto(
      fontSize: 35,
      color: Colors.white,
    ),
    displayMedium: GoogleFonts.roboto(
      fontSize:20,
      color: Colors.grey,
    ),
    displaySmall: GoogleFonts.roboto(
      fontSize: 10,
      color: Colors.grey
    ),

    titleMedium:  GoogleFonts.robotoFlex(
      fontSize: 15,
      color: AppColorTheme.lightColorTheme.secondary,
    ),
    titleLarge: GoogleFonts.robotoFlex(
      fontSize: 20,
      color: Colors.white,
    ),
  );
}