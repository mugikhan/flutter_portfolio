import 'package:flutter_portfolio/app/app.locator.dart';
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

  bool isHoneypotChecked = false;

  void onChangehoneypotCheck(bool? value) {
    isHoneypotChecked = value!;
    notifyListeners();
  }

  @override
  void setFormStatus() {}

  Future<void> onSendTap() async {
    if (!isHoneypotChecked) {
      Email email = Email(
        email: emailValue!,
        name: nameValue!,
        service: serviceValue!,
        message: messageValue!,
      );
      var response = await apiService.sendEmail(email);
      print("Res $response");
    } else {
      await dialogService.showDialog(
        title: 'Warning!',
        description: 'Bots not allowed!',
        dialogPlatform: DialogPlatform.Material,
        barrierDismissible: true,
        buttonTitleColor: ColorPalette.surface,
        buttonTitle: "Ok",
      );
    }

    // if (isNotABot) {
    //   Email email = Email(
    //     email: emailValue!,
    //     name: nameValue!,
    //     service: serviceValue!,
    //     message: messageValue!,
    //   );
    //   var response = await apiService.sendEmail(email);
    //   print("Res $response");
    // } else {
    // await dialogService.showDialog(
    //   title: 'Warning!',
    //   description: 'Bots not allowed!',
    //   dialogPlatform: DialogPlatform.Material,
    //   barrierDismissible: true,
    //   buttonTitleColor: ColorPalette.onPrimary,
    //   buttonTitle: "Ok",
    // );
    // }
  }
}
