import 'dart:math';

import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/data/datasources/remote/api/api_service.dart';
import 'package:flutter_portfolio/data/datasources/remote/recaptcha/recaptcha_service.dart';
import 'package:flutter_portfolio/data/enums/dialog_type.dart';
import 'package:flutter_portfolio/data/models/email/email.dart';
import 'package:flutter_portfolio/data/enums/snackbar_type.dart';
import 'package:flutter_portfolio/data/models/lambda_response/lambda_response.dart';
import 'package:flutter_portfolio/presentation/widgets/dialog/setup_dialog.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'contact_view.form.dart';

class ContactViewModel extends FormViewModel {
  final recaptchaService = locator<RecaptchaService>();
  final dialogService = locator<DialogService>();
  final apiService = locator<ApiService>();
  final _snackbarService = locator<SnackbarService>();
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();

  bool isHoneypotChecked = false;

  void onChangehoneypotCheck(bool? value) {
    isHoneypotChecked = value!;
    notifyListeners();
  }

  @override
  void setFormStatus() {}

  Future<bool> onSendTap() async {
    if (!isHoneypotChecked) {
      Email email = Email(
        email: emailValue!,
        name: nameValue!,
        service: ServiceValueToTitleMap[serviceValue!]!,
        message: messageValue!,
      );
      try {
        DialogResponse<LoadingDialogResponse> response = await _dialogService
            .showCustomDialog<LoadingDialogResponse, LoadingDialogRequest>(
          variant: DialogType.loading,
          barrierDismissible: false,
          data: LoadingDialogRequest(email: email),
        ) as DialogResponse<LoadingDialogResponse>;
        return true;
      } catch (e) {
        showErrorSnackbar(
            message: "Something went wrong while sending your email");
        return false;
      }
    } else {
      showErrorSnackbar();
      return false;
    }
  }

  Future<void> showErrorSnackbar({String? message}) async {
    await _snackbarService.showCustomSnackBar(
      variant: SnackbarType.error,
      message: message ?? "Bots not allowed!",
    );
  }
}
