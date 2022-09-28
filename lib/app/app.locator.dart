// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:stacked_core/stacked_core.dart';
import 'package:stacked_services/stacked_services.dart';

import '../data/datasources/remote/api/api_service.dart';
import '../data/datasources/remote/api/api_service_impl.dart';
import '../data/datasources/remote/http/http_service.dart';
import '../data/datasources/remote/http/http_service_impl.dart';
import '../data/datasources/remote/recaptcha/recaptcha_service.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator(
    {String? environment, EnvironmentFilter? environmentFilter}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => SnackbarService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => BottomSheetService());
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton<HttpService>(() => HttpServiceImpl());
  locator.registerLazySingleton<ApiService>(() => ApiServiceImpl());
  locator.registerLazySingleton(() => RecaptchaService());
}
