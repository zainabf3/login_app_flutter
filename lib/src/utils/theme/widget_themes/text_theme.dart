import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app_flutter/src/constants/colors.dart';

class TTextTheme {
  TTextTheme._();// to avoid creating instances

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: GoogleFonts.montserrat(
      color: darkColor,
      fontSize: 28.0,
      fontWeight: FontWeight.bold,),
    headlineMedium: GoogleFonts.montserrat(
      color: darkColor,
      fontSize: 24.0,
      fontWeight: FontWeight.w700,),
    headlineSmall: GoogleFonts.montserrat(
      color: darkColor,
      fontSize: 16.0,
      fontWeight: FontWeight.w600,),

    titleMedium: GoogleFonts.poppins(
      color: Colors.black54,
      fontSize: 24,
    ),);
  static TextTheme darkTextTheme = TextTheme(
      headlineMedium: GoogleFonts.montserrat(
        color: Colors.white70,
      ),
      titleMedium: GoogleFonts.poppins(
        color: Colors.white60,
        fontSize: 24,
      )
  );
}