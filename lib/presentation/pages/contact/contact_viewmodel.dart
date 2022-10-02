import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/data/datasources/remote/api/api_service.dart';
import 'package:flutter_portfolio/data/datasources/remote/recaptcha/recaptcha_service.dart';
import 'package:flutter_portfolio/data/models/email/email.dart';
import 'package:flutter_portfolio/data/models/enums/snackbar_type.dart';
import 'package:flutter_portfolio/data/models/lambda_response/lambda_response.dart';
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
      try {
        SendEmailLambdaResponse sendEmailLambdaResponse =
            SendEmailLambdaResponse.fromJson(await apiService.sendEmail(email));
        await _snackbarService.showCustomSnackBar(
          variant: SnackbarType.success,
          message: sendEmailLambdaResponse.body,
        );
        setBusy(false);
      } catch (e) {
        setBusy(false);
        showErrorSnackbar(
            message: "Something went wrong while sending your email");
      }
    } else {
      setBusy(false);
      showErrorSnackbar();
    }
  }

  Future<void> showErrorSnackbar({String? message}) async {
    await _snackbarService.showCustomSnackBar(
      variant: SnackbarType.error,
      message: message ?? "Bots not allowed!",
    );
  }
}
