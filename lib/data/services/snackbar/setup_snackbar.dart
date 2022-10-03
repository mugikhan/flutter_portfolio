import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/data/enums/snackbar_type.dart';
import 'package:flutter_portfolio/presentation/design/color_pallete.dart';
import 'package:stacked_services/stacked_services.dart';

void setupSnackbarUi() {
  final service = locator<SnackbarService>();

  // Registers a config to be used when calling showSnackbar
  service.registerSnackbarConfig(
    SnackbarConfig(
      snackStyle: SnackStyle.FLOATING,
      backgroundColor: ColorPalette.info,
      textColor: ColorPalette.onInfo,
      dismissDirection: DismissDirection.vertical,
      animationDuration: const Duration(seconds: 2),
    ),
  );

  service.registerCustomSnackbarConfig(
    variant: SnackbarType.info,
    config: SnackbarConfig(
      snackStyle: SnackStyle.FLOATING,
      backgroundColor: ColorPalette.info,
      textColor: ColorPalette.onInfo,
      dismissDirection: DismissDirection.vertical,
      animationDuration: const Duration(seconds: 2),
    ),
  );

  service.registerCustomSnackbarConfig(
    variant: SnackbarType.error,
    config: SnackbarConfig(
      snackStyle: SnackStyle.FLOATING,
      backgroundColor: ColorPalette.error,
      textColor: ColorPalette.onError,
      dismissDirection: DismissDirection.vertical,
      animationDuration: const Duration(seconds: 2),
    ),
  );

  service.registerCustomSnackbarConfig(
    variant: SnackbarType.success,
    config: SnackbarConfig(
      snackStyle: SnackStyle.FLOATING,
      backgroundColor: ColorPalette.success,
      textColor: ColorPalette.onSuccess,
      dismissDirection: DismissDirection.vertical,
      animationDuration: const Duration(seconds: 2),
    ),
  );

  service.registerCustomSnackbarConfig(
    variant: SnackbarType.warning,
    config: SnackbarConfig(
      snackStyle: SnackStyle.FLOATING,
      backgroundColor: ColorPalette.warning,
      textColor: ColorPalette.onWarning,
      dismissDirection: DismissDirection.vertical,
      animationDuration: const Duration(seconds: 2),
    ),
  );
}
