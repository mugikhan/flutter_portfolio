import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_pallete.dart';

final colorPalette = locator<ColorPalette>();

ThemeData lightTheme = ThemeData(
  bottomAppBarTheme: BottomAppBarTheme(
    color: colorPalette.surface,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: colorPalette.surface,
    iconTheme: IconThemeData(color: colorPalette.primaryIconLight),
    toolbarTextStyle: GoogleFonts.openSans(
      color: colorPalette.primaryTextLight,
      fontWeight: FontWeight.w700,
      fontSize: 24,
      height: 1.0,
    ),
    titleTextStyle: GoogleFonts.openSans(
      color: colorPalette.primaryTextLight,
      fontWeight: FontWeight.w700,
      fontSize: 24,
      height: 1.0,
    ),
  ),
  textTheme: TextTheme(
    displayLarge: GoogleFonts.openSans(
      color: colorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 60,
      height: 1.1,
    ),
    displayMedium: GoogleFonts.openSans(
      color: colorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 45,
      height: 1.1,
    ),
    displaySmall: GoogleFonts.openSans(
      color: colorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 36,
      height: 1.1,
    ),
    headlineLarge: GoogleFonts.openSans(
      color: colorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 32,
      height: 1.1,
    ),
    headlineMedium: GoogleFonts.openSans(
      color: colorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 28,
      height: 1.1,
    ),
    headlineSmall: GoogleFonts.openSans(
      color: colorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 24,
      height: 1.1,
    ),
    titleLarge: GoogleFonts.openSans(
      color: colorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 22,
      height: 1.1,
    ),
    titleMedium: GoogleFonts.openSans(
      color: colorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 1.1,
    ),
    titleSmall: GoogleFonts.openSans(
      color: colorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.1,
    ),
    labelLarge: GoogleFonts.openSans(
      color: colorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.1,
    ),
    labelMedium: GoogleFonts.openSans(
      color: colorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      height: 1.1,
    ),
    labelSmall: GoogleFonts.openSans(
      color: colorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 11,
      height: 1.1,
    ),
    bodyLarge: GoogleFonts.openSans(
      color: colorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 1.1,
    ),
    bodyMedium: GoogleFonts.openSans(
      color: colorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.1,
    ),
    bodySmall: GoogleFonts.openSans(
      color: colorPalette.primaryTextLight,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      height: 1.1,
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(colorPalette.primary),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(color: colorPalette.primary),
        ),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        GoogleFonts.openSans(
          color: colorPalette.primaryButtonTextLight,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          height: 1.0,
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
      backgroundColor: MaterialStateProperty.all<Color>(colorPalette.primary),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(color: colorPalette.primary),
        ),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        GoogleFonts.openSans(
          color: colorPalette.primaryButtonTextLight,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          height: 1.0,
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
        BorderSide(color: colorPalette.primary),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(color: colorPalette.primaryGrey),
        ),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        GoogleFonts.openSans(
          color: colorPalette.primaryButtonTextDark,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          height: 1.0,
        ),
      ),
      fixedSize: MaterialStateProperty.all<Size>(
        const Size(double.maxFinite, 50),
      ),
    ),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: colorPalette.primaryButtonLight,
    disabledColor: colorPalette.primaryButtonDisabledLight,
    highlightColor: colorPalette.primaryButtonActiveLight,
    textTheme: ButtonTextTheme.normal,
    alignedDropdown: true,
    colorScheme: ColorScheme.light(
      background: colorPalette.primaryButtonLight,
    ),
  ),
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: colorPalette.primary,
    onPrimary: colorPalette.onPrimary,
    secondary: colorPalette.secondary,
    onSecondary: colorPalette.onSecondary,
    error: colorPalette.error,
    onError: colorPalette.onError,
    background: colorPalette.background,
    onBackground: colorPalette.onBackground,
    surface: colorPalette.surface,
    onSurface: colorPalette.onSurface,
  ),
);

ThemeData darkTheme = ThemeData(
  bottomAppBarTheme: BottomAppBarTheme(
    color: colorPalette.surface,
  ),
  appBarTheme: AppBarTheme(
      backgroundColor: colorPalette.surface,
      iconTheme: IconThemeData(color: colorPalette.primaryIconLight),
      toolbarTextStyle: GoogleFonts.openSans(
        color: colorPalette.primaryTextLight,
        fontWeight: FontWeight.w700,
        fontSize: 24,
        height: 1.0,
      )),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all<TextStyle>(
        GoogleFonts.openSans(
          color: colorPalette.primaryTextLight,
          fontWeight: FontWeight.w700,
          fontSize: 14,
          height: 1.0,
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
          color: colorPalette.primaryTextLight,
          fontWeight: FontWeight.w700,
          fontSize: 14,
          height: 1.0,
        ),
      ),
    ),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: colorPalette.primaryButtonLight,
    disabledColor: colorPalette.primaryButtonDisabledLight,
    highlightColor: colorPalette.primaryButtonActiveLight,
    textTheme: ButtonTextTheme.normal,
    alignedDropdown: true,
    colorScheme: ColorScheme.light(
      background: colorPalette.primaryButtonLight,
    ),
  ),
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: colorPalette.primary,
    onPrimary: colorPalette.onPrimary,
    secondary: colorPalette.secondary,
    onSecondary: colorPalette.onSecondary,
    error: colorPalette.error,
    onError: colorPalette.onError,
    background: colorPalette.background,
    onBackground: colorPalette.onBackground,
    surface: colorPalette.surface,
    onSurface: colorPalette.onSurface,
  ),
);
