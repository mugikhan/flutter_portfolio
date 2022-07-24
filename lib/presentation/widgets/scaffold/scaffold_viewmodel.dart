import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ScaffoldViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void onPopUpMenuSelected(int index) {
    switch (index) {
      case 1:
        _navigationService.clearStackAndShow(Routes.homeView);
        break;
      case 2:
        break;
      case 3:
        break;
      case 4:
        break;
    }
  }
}
