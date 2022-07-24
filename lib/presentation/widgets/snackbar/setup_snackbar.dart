import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/data/models/enums/snackbar_type.dart';
import 'package:flutter_portfolio/presentation/design/color_pallete.dart';
import 'package:stacked_services/stacked_services.dart';

void setupSnackbarUi() {
  final service = locator<SnackbarService>();
  final colorPalette = locator<ColorPalette>();

  service.registerCustomSnackbarConfig(
    variant: SnackbarType.success,
    config: SnackbarConfig(
      snackPosition: SnackPosition.TOP,
      backgroundColor: colorPalette.success,
      textColor: colorPalette.onSuccess,
      borderRadius: 1,
      dismissDirection: DismissDirection.up,
    ),
  );

  service.registerCustomSnackbarConfig(
    variant: SnackbarType.error,
    config: SnackbarConfig(
      snackPosition: SnackPosition.TOP,
      backgroundColor: colorPalette.error,
      textColor: colorPalette.onError,
      borderRadius: 1,
      dismissDirection: DismissDirection.up,
    ),
  );

  service.registerCustomSnackbarConfig(
    variant: SnackbarType.info,
    config: SnackbarConfig(
      snackPosition: SnackPosition.TOP,
      backgroundColor: colorPalette.info,
      textColor: colorPalette.onInfo,
      borderRadius: 1,
      dismissDirection: DismissDirection.up,
    ),
  );

  service.registerCustomSnackbarConfig(
    variant: SnackbarType.warning,
    config: SnackbarConfig(
      snackPosition: SnackPosition.TOP,
      backgroundColor: colorPalette.warning,
      textColor: colorPalette.onWarning,
      borderRadius: 1,
      dismissDirection: DismissDirection.up,
    ),
  );
}
