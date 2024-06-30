import 'package:cubtale_challenge/presentation/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.blueGrey, // Set your primary color
        accentColor: Colors.blueGrey, // Set your accent color
      ),
      cardColor: AppColors.white,
      canvasColor: AppColors.primaryColor,
      focusColor: AppColors.primaryColor, // Main color
      disabledColor: AppColors.translucentColor,
      primaryColor: AppColors.primaryColor, // Secondary color\
      primaryColorLight: AppColors.translucentColor,
      indicatorColor: const Color.fromARGB(255, 210, 80, 71),
      appBarTheme: AppBarTheme(
        color: Colors.transparent, // Transparent app bar
        elevation: 0, // No shadow
        iconTheme:
            const IconThemeData(color: AppColors.secondaryColor), // White icons
        titleTextStyle: GoogleFonts.quicksand(
          fontSize: 20.w,
          fontWeight: FontWeight.w600, // Semibold
          color: AppColors.secondaryColor,
        ),
      ),
      textTheme: TextTheme(
        // button: GoogleFonts.quicksand(fontSize:15, fontWeight: FontWeight.w600, color: AppColors.primaryColor,),
        displayLarge: GoogleFonts.quicksand(
          fontSize: 30.w,
          fontWeight: FontWeight.w800, // Semibold
          color: AppColors.secondaryColor,
        ),
        headlineLarge: GoogleFonts.quicksand(
          fontSize: 20.w,
          fontWeight: FontWeight.w600, // Semibold
          color: AppColors.secondaryColor,
        ),
        headlineMedium: GoogleFonts.quicksand(
          fontSize: 18.w,
          fontWeight: FontWeight.w400,
          color: AppColors.secondaryColor,
        ),
        headlineSmall: GoogleFonts.quicksand(
          fontSize: 12.w,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryColor,
        ),
        bodyLarge: GoogleFonts.quicksand(
          fontSize: 15.w,
          fontWeight: FontWeight.w400, // Regular
          color: AppColors.secondaryColor,
        ),
        bodyMedium: GoogleFonts.quicksand(
          fontSize: 12.w,
          fontWeight: FontWeight.w600, // Regular
          color: AppColors.secondaryColor,
        ),
        bodySmall: GoogleFonts.quicksand(
            fontSize: 15.w,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor),
        labelLarge: GoogleFonts.quicksand(
          fontSize: 30.w,
          fontWeight: FontWeight.bold, // Bold
          color: AppColors.fontColor,
        ),
        labelMedium: GoogleFonts.quicksand(
          fontSize: 20.w,
          fontWeight: FontWeight.w600, // Bold
          color: AppColors.fontColor,
        ),
        labelSmall: GoogleFonts.quicksand(
          fontSize: 20.w,
          fontWeight: FontWeight.bold,
          color: AppColors.fontColor,
        ),
        titleLarge: GoogleFonts.quicksand(
          fontSize: 15.w,
          fontWeight: FontWeight.bold, // Bold
          color: AppColors.secondaryColor,
        ),
        titleMedium: GoogleFonts.quicksand(
            fontSize: 20.w,
            fontWeight: FontWeight.w600,
            color: AppColors.fontColor),
        titleSmall: GoogleFonts.quicksand(
            fontSize: 12.w,
            fontWeight: FontWeight.w400,
            color: AppColors.secondaryColor),
      ),
    );
  }
}
