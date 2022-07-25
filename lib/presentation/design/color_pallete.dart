import 'dart:ui';

import 'package:flutter/material.dart';

class ColorPalette {
  final Color primary = const Color(0xFFB73FE0);
  final Color onPrimary = const Color(0xFF000000);
  final Color secondary = const Color(0xFF27BAF7);
  final Color onSecondary = const Color(0xFF000000);
  final Color tertiary = const Color(0xFFDB20DB);
  final Color additional = const Color(0xFF6E78E6);

  final Color primaryGrey = const Color(0xFFF7F7F7);
  final Color secondaryGrey = const Color(0xFFAAAAAA);
  final Color tertiaryGrey = const Color(0xFFE0E0E0);

  final Color success = const Color(0xFF198754);
  final Color onSuccess = const Color(0xFFFFFFFF);
  final Color error = const Color(0xFFDC3545);
  final Color onError = const Color(0xFFFFFFFF);
  final Color info = const Color(0xFF0DCAF0);
  final Color onInfo = const Color(0xFF000000);
  final Color warning = const Color(0xFFFFC107);
  final Color onWarning = const Color(0xFF000000);

  final Color background = const Color(0xFFFFFFFF);
  final Color onBackground = const Color(0xFF595959);

  final Color surface = const Color(0xFFFFFFFF);
  final Color onSurface = const Color(0xFF595959);

  final Color primaryDark = const Color(0xFF000000);
  final Color secondaryDark = const Color(0xFF2F2F2F);

  final Color primaryTextLight = const Color(0xFF000000);
  final Color secondaryTextLight = const Color(0xFF000000).withOpacity(0.8);

  final Color primaryTextDark = const Color(0xFFFFFFFF);
  final Color secondaryTextDark = const Color(0xFFFFFFFF).withOpacity(0.8);

  final Color primaryButtonLight = const Color(0xFFD7634B);
  final Color primaryButtonActiveLight = const Color(0xFFC4533C);
  final Color secondaryButtonLight = const Color(0xFFD7944B);
  final Color secondaryActiveButtonLight = const Color(0xFFA46820);

  final Color primaryButtonTextLight = const Color(0xFFFFFFFF);
  final Color secondaryButtonTextLight = const Color(0xFFFFFFFF);

  final Color primaryButtonTextDark = const Color(0xFF000000);
  final Color secondaryButtonTextDark =
      const Color(0xFF000000).withOpacity(0.8);

  final Color primaryButtonDisabledLight = const Color(0xFFC7C7C7);
  final Color secondaryButtonDisabledLight = const Color(0xFFC7C7C7);

  final Color primaryIconLight = const Color(0xFF000000);
  final Color primaryIconDark = const Color(0xFFFFFFFF);
  final Color secondaryIconLight = const Color(0xFF717171);
  final Color secondaryIconDark = const Color(0xFF717171);
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
