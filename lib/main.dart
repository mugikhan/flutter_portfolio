import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/app/app.router.dart';
import 'package:flutter_portfolio/data/datasources/remote/recaptcha/recaptcha_service.dart';
import 'package:flutter_portfolio/presentation/design/theme_setup.dart';
import 'package:flutter_portfolio/presentation/widgets/snackbar/setup_snackbar.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  await ThemeManager.initialise();
  await locator<RecaptchaService>().initiate();
  setupSnackbarUi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
        defaultThemeMode: ThemeMode.light,
        statusBarColorBuilder: (theme) => Colors.transparent,
        lightTheme: lightTheme,
        darkTheme: darkTheme,
        builder: (context, regularTheme, darkTheme, themeMode) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Mugi Khan',
            navigatorKey: StackedService.navigatorKey,
            onGenerateRoute: StackedRouter().onGenerateRoute,
            theme: regularTheme,
            darkTheme: darkTheme,
            themeMode: themeMode,
          );
        });
  }
}
