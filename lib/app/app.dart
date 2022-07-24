import 'package:flutter_portfolio/data/datasources/remote/api/api_service.dart';
import 'package:flutter_portfolio/data/datasources/remote/api/api_service_impl.dart';
import 'package:flutter_portfolio/data/datasources/remote/http/http_service.dart';
import 'package:flutter_portfolio/data/datasources/remote/http/http_service_impl.dart';
import 'package:flutter_portfolio/presentation/design/color_pallete.dart';
import 'package:flutter_portfolio/presentation/pages/home/home_view.dart';
import 'package:flutter_portfolio/presentation/pages/splash/splash_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    AdaptiveRoute(page: SplashView, initial: true),
    AdaptiveRoute(page: HomeView),
  ],
  dependencies: [
    //Stacked Services
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: NavigationService),
    //Services
    LazySingleton(classType: HttpServiceImpl, asType: HttpService),
    LazySingleton(classType: ApiServiceImpl, asType: ApiService),
    //Repositories

    //UseCases

    //Design
    Factory(classType: ColorPalette)
  ],
  logger: StackedLogger(),
  locatorName: 'locator',
  locatorSetupName: 'setupLocator',
)
class App {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
