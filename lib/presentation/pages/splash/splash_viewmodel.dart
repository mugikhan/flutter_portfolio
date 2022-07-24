import 'dart:async';

import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashViewModel extends BaseViewModel {
  final Timer timeToNavigate = Timer(const Duration(milliseconds: 2000),
      () => locator<NavigationService>().replaceWith(Routes.homeView));
}
