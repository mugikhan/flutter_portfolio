import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/app/app.router.dart';
import 'package:share_plus/share_plus.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToContact() {
    _navigationService.navigateToContactView();
  }

  void shareWebsite() {
    Share.share(
      'Check out this website https://mugikhan.com',
      subject: "Mugi Khan - Software Engineer",
    );
  }
}
