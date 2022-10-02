import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/data/constants/snackbar_type.dart';
import 'package:flutter_portfolio/data/datasources/remote/api/api_service.dart';
import 'package:flutter_portfolio/data/datasources/remote/recaptcha/recaptcha_service.dart';
import 'package:flutter_portfolio/data/models/email/email.dart';
import 'package:flutter_portfolio/presentation/design/color_pallete.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'contact_view.form.dart';

class ContactViewModel extends FormViewModel {
  final recaptchaService = locator<RecaptchaService>();
  final dialogService = locator<DialogService>();
  final apiService = locator<ApiService>();
  final _snackbarService = locator<SnackbarService>();

  bool isHoneypotChecked = false;

  void onChangehoneypotCheck(bool? value) {
    isHoneypotChecked = value!;
    notifyListeners();
  }

  @override
  void setFormStatus() {}

  Future<void> onSendTap() async {
    setBusy(true);
    if (!isHoneypotChecked) {
      Email email = Email(
        email: emailValue!,
        name: nameValue!,
        service: ServiceValueToTitleMap[serviceValue!]!,
        message: messageValue!,
      );
      await apiService.sendEmail(email);
      setBusy(false);
      await _snackbarService.showCustomSnackBar(
        variant: SnackbarType.success,
        message: "Your email has been sent!",
      );
    } else {
      setBusy(false);
      await _snackbarService.showCustomSnackBar(
        variant: SnackbarType.error,
        message: "Bots not allowed!",
      );
    }
  }
}
