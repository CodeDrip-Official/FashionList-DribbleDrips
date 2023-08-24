import 'colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    fontFamily: GoogleFonts.poppins().fontFamily,
    colorScheme: ColorScheme.fromSeed(
      seedColor: kPrimaryColor,
      background: Colors.white,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: kBlackColor,
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
      titleMedium: TextStyle(
        color: kBlackColor,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      titleSmall: TextStyle(
        color: kBlackColor,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      bodyLarge: TextStyle(
        color: kOnGreyColor,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        color: kOnGreyColor,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
      bodySmall: TextStyle(
        color: kOnGreyColor,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      ),
      labelLarge: TextStyle(
        color: kBottomBarIconColor,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      toolbarHeight: 76,
      centerTitle: true,
      iconTheme: const IconThemeData(color: kBlackColor),
      titleTextStyle: GoogleFonts.poppins(
        color: kBlackColor,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
    ),
  );
}
