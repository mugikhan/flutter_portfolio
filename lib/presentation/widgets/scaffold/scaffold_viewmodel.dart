import 'dart:convert';
import 'dart:html';

import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/app/app.router.dart';
import 'package:flutter_portfolio/data/datasources/remote/api/api_service.dart';
import 'package:flutter_portfolio/data/models/enums/snackbar_type.dart';
import 'package:flutter_portfolio/data/models/lambda_response/lambda_response.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_launcher/url_launcher.dart';

class ScaffoldViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _apiService = locator<ApiService>();
  final _snackbarService = locator<SnackbarService>();

  void navigateToHome() {
    _navigationService.clearStackAndShow(Routes.homeView);
  }

  void navigateToServices() {
    _navigationService.navigateToServicesView();
  }

  void navigateToExperience() {
    _navigationService.navigateToExperienceView();
  }

  void navigateToContact() {
    _navigationService.navigateToContactView();
  }

  void download(List<int> bytes, {String? downloadName}) {
    // Encode our file in base64
    final base64 = base64Encode(bytes);
    // Create the link with the file
    final anchor =
        AnchorElement(href: 'data:application/octet-stream;base64,$base64')
          ..target = 'blank';
    if (downloadName != null) {
      anchor.download = downloadName;
    }
    document.body?.append(anchor);
    anchor.click();
    anchor.remove();
    return;
  }

  Future<void> onResumeTap() async {
    try {
      FetchResumeLambdaResponse response = FetchResumeLambdaResponse.fromJson(
          await _apiService.downloadResume());
      if (response.statusCode == 200) {
        download(response.body, downloadName: "resume.pdf");
      } else {
        await _snackbarService.showCustomSnackBar(
          variant: SnackbarType.error,
          message: "Failed to download file",
        );
      }
    } catch (e) {
      await _snackbarService.showCustomSnackBar(
        variant: SnackbarType.error,
        message: "Failed to download file",
      );
    }
  }

  void onPopUpMenuSelected(int index) async {
    switch (index) {
      case 1:
        navigateToHome();
        break;
      case 2:
        navigateToServices();
        break;
      case 3:
        navigateToExperience();
        break;
      case 4:
        navigateToContact();
        break;
      case 5:
        await onResumeTap();
        break;
    }
  }
}
