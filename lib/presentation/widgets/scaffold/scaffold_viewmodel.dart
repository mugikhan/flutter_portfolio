import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ScaffoldViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToHome() {
    _navigationService.clearStackAndShow(Routes.homeView);
  }

  void navigateToServices() {
    _navigationService.navigateToServicesView();
  }

  void navigateToExperience() {
    _navigationService.navigateToExperienceView();
  }

  void onPopUpMenuSelected(int index) {
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
        break;
    }
  }
}
