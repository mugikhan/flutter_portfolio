import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/app/app.router.dart';
import 'package:flutter_portfolio/data/datasources/remote/api/api_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ScaffoldViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _apiService = locator<ApiService>();

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

  Future<void> onResumeTap() async {
    var res = await _apiService.downloadResume();
    print("Res: $res");
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
