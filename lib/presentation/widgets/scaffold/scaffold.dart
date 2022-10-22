import 'package:flutter/material.dart';
import 'package:flutter_portfolio/presentation/common/utils/asset_image_util.dart';
import 'package:flutter_portfolio/presentation/design/color_pallete.dart';
import 'package:flutter_portfolio/presentation/widgets/buttons/primary_button.dart';
import 'package:flutter_portfolio/presentation/widgets/buttons/transparent_button.dart';
import 'package:flutter_portfolio/presentation/widgets/scaffold/scaffold_viewmodel.dart';
import 'package:flutter_portfolio/presentation/widgets/text/gradient_text.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

class PrimaryScaffold extends StatelessWidget {
  const PrimaryScaffold({
    Key? key,
    this.title,
    required this.body,
    this.padding,
  }) : super(key: key);

  final String? title;
  final Widget body;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ScaffoldViewModel>.nonReactive(
      viewModelBuilder: () => ScaffoldViewModel(),
      builder: (context, viewModel, _) {
        return ScreenTypeLayout.builder(
          mobile: (BuildContext context) => Scaffold(
            appBar: AppBar(
              elevation: 0,
              leading: GestureDetector(
                onTap: () => viewModel.navigateToHome(),
                child: Image.asset(
                  "assets/logo-background.png",
                  fit: BoxFit.contain,
                ),
              ),
              leadingWidth: 150,
              title: title != null ? Text(title!) : Container(),
              titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
              actions: const [AppbarActionsMobile()],
            ),
            backgroundColor: ColorPalette.surface,
            body: body,
            bottomNavigationBar: GestureDetector(
              onTap: () => viewModel.onFooterTap(),
              child: Container(
                height: 30,
                alignment: Alignment.center,
                color: ColorPalette.primaryGrey.withOpacity(0.2),
                child: Text(
                    "© 2022 - ${DateTime.now().year} Copyright: Mughees Khan"),
              ),
            ),
          ),
          desktop: (BuildContext context) => Scaffold(
            appBar: AppBar(
              leading: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    viewModel.navigateToHome();
                  },
                  child: Image.asset(
                    "assets/logo-background.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              leadingWidth: 175,
              title: title != null ? Text(title!) : Container(),
              titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
              actions: const [AppbarActionsDesktop()],
            ),
            backgroundColor: ColorPalette.surface,
            body: Padding(
              padding: padding ??
                  EdgeInsets.all(
                    getValueForScreenType<double>(
                      context: context,
                      mobile: 8,
                      tablet: 16,
                      desktop: 16,
                    ),
                  ),
              child: body,
            ),
            bottomNavigationBar: GestureDetector(
              onTap: () => viewModel.onFooterTap(),
              child: Container(
                height: 30,
                alignment: Alignment.center,
                color: ColorPalette.primaryGrey.withOpacity(0.2),
                child: Text(
                    "© 2022 - ${DateTime.now().year} Copyright: Mughees Khan"),
              ),
            ),
          ),
        );
      },
    );
  }
}

class AppbarActionsMobile extends ViewModelWidget<ScaffoldViewModel> {
  const AppbarActionsMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScaffoldViewModel viewModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        PopupMenuButton(
          icon: const Icon(Icons.menu),
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 1,
              child: Text(
                "Home",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            PopupMenuItem(
              value: 2,
              child: Text(
                "Services",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            PopupMenuItem(
              value: 3,
              child: Text(
                "Experience",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            PopupMenuItem(
              value: 4,
              child: Text(
                "Contact",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            PopupMenuItem(
              value: 5,
              child: Text(
                "Resume",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
          onSelected: viewModel.onPopUpMenuSelected,
        ),
      ],
    );
  }
}

class AppbarActionsDesktop extends ViewModelWidget<ScaffoldViewModel> {
  const AppbarActionsDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScaffoldViewModel viewModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TransparentTextButton(
          title: "Home",
          onPressed: () {
            viewModel.navigateToHome();
          },
        ),
        TransparentTextButton(
          title: "Services",
          onPressed: () {
            viewModel.navigateToServices();
          },
        ),
        TransparentTextButton(
          title: "Experience",
          onPressed: () {
            viewModel.navigateToExperience();
          },
        ),
        TransparentTextButton(
          title: "Contact",
          onPressed: () {
            viewModel.navigateToContact();
          },
        ),
        PrimaryTextButton(
          title: "Resume",
          width: 100,
          onPressed: viewModel.onResumeTap,
        ),
        const SizedBox(
          width: 25,
        )
      ],
    );
  }
}
