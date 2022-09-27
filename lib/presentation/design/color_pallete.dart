import 'dart:ui';

import 'package:flutter/material.dart';

class ColorPalette {
  static const Color primary = Color(0xFFB73FE0);
  static const Color onPrimary = Color(0xFF000000);
  static const Color secondary = Color(0xFF27BAF7);
  static const Color onSecondary = Color(0xFF000000);
  static const Color tertiary = Color(0xFFDB20DB);
  static const Color additional = Color(0xFF6E78E6);

  static const Color primaryGrey = Color(0xFFF7F7F7);
  static const Color secondaryGrey = Color(0xFFAAAAAA);
  static const Color tertiaryGrey = Color(0xFFE0E0E0);

  static const Color success = Color(0xFF198754);
  static const Color onSuccess = Color(0xFFFFFFFF);
  static const Color error = Color(0xFFDC3545);
  static const Color onError = Color(0xFFFFFFFF);
  static const Color info = Color(0xFF0DCAF0);
  static const Color onInfo = Color(0xFF000000);
  static const Color warning = Color(0xFFFFC107);
  static const Color onWarning = Color(0xFF000000);

  static const Color background = Color(0xFFFFFFFF);
  static const Color onBackground = Color(0xFF595959);

  static const Color surface = Color(0xFFFFFFFF);
  static const Color onSurface = Color(0xFF595959);

  static const Color primaryDark = Color(0xFF000000);
  static const Color secondaryDark = Color(0xFF2F2F2F);

  static const Color primaryTextLight = Color(0xFF000000);
  static Color secondaryTextLight = const Color(0xFF000000).withOpacity(0.8);

  static const Color primaryTextDark = Color(0xFFFFFFFF);
  static Color secondaryTextDark = const Color(0xFFFFFFFF).withOpacity(0.8);

  static const Color primaryButtonLight = Color(0xFFD7634B);
  static const Color primaryButtonActiveLight = Color(0xFFC4533C);
  static const Color secondaryButtonLight = Color(0xFFD7944B);
  static const Color secondaryActiveButtonLight = Color(0xFFA46820);

  static const Color primaryButtonTextLight = Color(0xFFFFFFFF);
  static const Color secondaryButtonTextLight = Color(0xFFFFFFFF);

  static const Color primaryButtonTextDark = Color(0xFF000000);
  static Color secondaryButtonTextDark =
      const Color(0xFF000000).withOpacity(0.8);

  static const Color primaryButtonDisabledLight = Color(0xFFC7C7C7);
  static const Color secondaryButtonDisabledLight = Color(0xFFC7C7C7);

  static const Color primaryIconLight = Color(0xFF000000);
  static const Color primaryIconDark = Color(0xFFFFFFFF);
  static const Color secondaryIconLight = Color(0xFF717171);
  static const Color secondaryIconDark = Color(0xFF717171);
}

class ColorShader {
  final Color? p50;
  final Color? p100;
  final Color? p200;
  final Color? p300;
  final Color? p400;
  final Color? p500;
  final Color? p600;
  final Color? p700;
  final Color? p800;
  final Color? p900;

  ColorShader(
      {this.p50,
      this.p100,
      this.p200,
      this.p300,
      this.p400,
      this.p500,
      this.p600,
      this.p700,
      this.p800,
      this.p900});
}
