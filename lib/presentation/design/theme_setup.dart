import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_pallete.dart';

ThemeData lightTheme = ThemeData(
  bottomAppBarTheme: const BottomAppBarTheme(
    color: ColorPalette.surface,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: ColorPalette.surface,
    iconTheme: const IconThemeData(color: ColorPalette.primaryIconLight),
    toolbarTextStyle: GoogleFonts.openSans(
      color: ColorPalette.primaryTextLight,
      fontWeight: FontWeight.w700,
      fontSize: 24,
      height: 1.2,
    ),
    titleTextStyle: GoogleFonts.openSans(
      color: ColorPalette.primaryTextLight,
      fontWeight: FontWeight.w700,
      fontSize: 24,
      height: 1.2,
    ),
  ),
  textTheme: TextTheme(
    displayLarge: GoogleFonts.openSans(
      color: ColorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 60,
      height: 1.2,
    ),
    displayMedium: GoogleFonts.openSans(
      color: ColorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 45,
      height: 1.2,
    ),
    displaySmall: GoogleFonts.openSans(
      color: ColorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 36,
      height: 1.2,
    ),
    headlineLarge: GoogleFonts.openSans(
      color: ColorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 32,
      height: 1.2,
    ),
    headlineMedium: GoogleFonts.openSans(
      color: ColorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 28,
      height: 1.2,
    ),
    headlineSmall: GoogleFonts.openSans(
      color: ColorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 24,
      height: 1.2,
    ),
    titleLarge: GoogleFonts.openSans(
      color: ColorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 22,
      height: 1.2,
    ),
    titleMedium: GoogleFonts.openSans(
      color: ColorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 18,
      height: 1.2,
    ),
    titleSmall: GoogleFonts.openSans(
      color: ColorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 1.2,
    ),
    labelLarge: GoogleFonts.openSans(
      color: ColorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.2,
    ),
    labelMedium: GoogleFonts.openSans(
      color: ColorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      height: 1.2,
    ),
    labelSmall: GoogleFonts.openSans(
      color: ColorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 11,
      height: 1.2,
    ),
    bodyLarge: GoogleFonts.openSans(
      color: ColorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 1.2,
    ),
    bodyMedium: GoogleFonts.openSans(
      color: ColorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.2,
    ),
    bodySmall: GoogleFonts.openSans(
      color: ColorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      height: 1.2,
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(ColorPalette.primary),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: const BorderSide(color: ColorPalette.primary),
        ),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        GoogleFonts.openSans(
          color: ColorPalette.primaryButtonTextLight,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          height: 1.2,
        ),
      ),
      fixedSize: MaterialStateProperty.all<Size>(
        const Size(double.maxFinite, 50),
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all<double>(6.0),
      backgroundColor: MaterialStateProperty.all<Color>(ColorPalette.primary),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: const BorderSide(color: ColorPalette.primary),
        ),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        GoogleFonts.openSans(
          color: ColorPalette.primaryButtonTextLight,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          height: 1.2,
        ),
      ),
      fixedSize: MaterialStateProperty.all<Size>(
        const Size(double.maxFinite, 50),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      side: MaterialStateProperty.all<BorderSide>(
        const BorderSide(color: ColorPalette.primary),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: const BorderSide(color: ColorPalette.primaryGrey),
        ),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        GoogleFonts.openSans(
          color: ColorPalette.primaryButtonTextDark,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          height: 1.2,
        ),
      ),
      fixedSize: MaterialStateProperty.all<Size>(
        const Size(double.maxFinite, 50),
      ),
    ),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: ColorPalette.primaryButtonLight,
    disabledColor: ColorPalette.primaryButtonDisabledLight,
    highlightColor: ColorPalette.primaryButtonActiveLight,
    textTheme: ButtonTextTheme.normal,
    alignedDropdown: true,
    colorScheme: ColorScheme.light(
      background: ColorPalette.primaryButtonLight,
    ),
  ),
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: ColorPalette.primary,
    onPrimary: ColorPalette.onPrimary,
    secondary: ColorPalette.secondary,
    onSecondary: ColorPalette.onSecondary,
    error: ColorPalette.error,
    onError: ColorPalette.onError,
    background: ColorPalette.background,
    onBackground: ColorPalette.onBackground,
    surface: ColorPalette.surface,
    onSurface: ColorPalette.onSurface,
  ),
);

ThemeData darkTheme = ThemeData(
  bottomAppBarTheme: const BottomAppBarTheme(
    color: ColorPalette.surface,
  ),
  appBarTheme: AppBarTheme(
      backgroundColor: ColorPalette.surface,
      iconTheme: const IconThemeData(color: ColorPalette.primaryIconLight),
      toolbarTextStyle: GoogleFonts.openSans(
        color: ColorPalette.primaryTextLight,
        fontWeight: FontWeight.w700,
        fontSize: 24,
        height: 1.2,
      )),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all<TextStyle>(
        GoogleFonts.openSans(
          color: ColorPalette.primaryTextLight,
          fontWeight: FontWeight.w700,
          fontSize: 14,
          height: 1.2,
        ),
      ),
      fixedSize: MaterialStateProperty.all<Size>(
        const Size(double.maxFinite, 56),
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all<TextStyle>(
        GoogleFonts.openSans(
          color: ColorPalette.primaryTextLight,
          fontWeight: FontWeight.w700,
          fontSize: 14,
          height: 1.2,
        ),
      ),
    ),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: ColorPalette.primaryButtonLight,
    disabledColor: ColorPalette.primaryButtonDisabledLight,
    highlightColor: ColorPalette.primaryButtonActiveLight,
    textTheme: ButtonTextTheme.normal,
    alignedDropdown: true,
    colorScheme: ColorScheme.light(
      background: ColorPalette.primaryButtonLight,
    ),
  ),
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: ColorPalette.primary,
    onPrimary: ColorPalette.onPrimary,
    secondary: ColorPalette.secondary,
    onSecondary: ColorPalette.onSecondary,
    error: ColorPalette.error,
    onError: ColorPalette.onError,
    background: ColorPalette.background,
    onBackground: ColorPalette.onBackground,
    surface: ColorPalette.surface,
    onSurface: ColorPalette.onSurface,
  ),
);
