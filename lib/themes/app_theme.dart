import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData customTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    elevation: 0,
    unselectedItemColor: Colors.grey[300],
    selectedItemColor: Colors.pink,
  ),
  primaryColor: Colors.blue,
  appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.black),
      titleTextStyle: GoogleFonts.openSans(
        letterSpacing: 1.3,
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      actionsIconTheme: const IconThemeData(size: 30)),
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: Colors.pink,
    linearTrackColor: Colors.pink[100],
  ),
  textTheme: TextTheme(
    titleSmall: GoogleFonts.openSans(
      fontSize: 14,
      color: Colors.black,
    ),
    titleMedium: GoogleFonts.openSans(
      fontSize: 18,
      color: Colors.black,
    ),
    titleLarge: GoogleFonts.openSans(
      fontSize: 22,
      color: Colors.black,
    ),
    labelSmall: GoogleFonts.gildaDisplay(fontSize: 22),
    labelMedium: GoogleFonts.gildaDisplay(fontSize: 26),
    labelLarge: GoogleFonts.gildaDisplay(fontSize: 30),
    bodySmall: GoogleFonts.gildaDisplay(fontSize: 22),
    bodyMedium: GoogleFonts.gildaDisplay(fontSize: 26),
    bodyLarge: GoogleFonts.gildaDisplay(fontSize: 30),
    headlineLarge: GoogleFonts.openSans(
        fontSize: 30, color: const Color.fromRGBO(0, 0, 0, 1), fontWeight: FontWeight.w700),
    headlineMedium: GoogleFonts.openSans(
        fontSize: 24, color: Colors.black, fontWeight: FontWeight.w700),
    headlineSmall: GoogleFonts.openSans(
        fontSize: 14, color: Colors.black38, fontWeight: FontWeight.w700),
  ),
  iconTheme: const IconThemeData(color: Colors.pink),
  buttonTheme: const ButtonThemeData(buttonColor: Colors.pink),
);
