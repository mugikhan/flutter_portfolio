import 'package:flutter/material.dart';
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
  }) : super(key: key);

  final String? title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => ScaffoldViewModel(),
      builder: (context, viewModel, _) {
        return ScreenTypeLayout.builder(
          mobile: (BuildContext context) => Scaffold(
            appBar: AppBar(
              leading: Image.asset(
                "assets/logo-background.png",
                fit: BoxFit.fill,
              ),
              leadingWidth: 175,
              title: title != null ? Text(title!) : Container(),
              titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
              actions: const [AppbarActionsMobile()],
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: body,
            ),
          ),
          desktop: (BuildContext context) => Scaffold(
            appBar: AppBar(
              leading: Image.asset(
                "assets/logo-background.png",
                fit: BoxFit.fill,
              ),
              leadingWidth: 175,
              title: title != null ? Text(title!) : Container(),
              titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
              actions: const [AppbarActionsDesktop()],
            ),
            body: Padding(
              padding: EdgeInsets.all(
                getValueForScreenType<double>(
                  context: context,
                  mobile: 8,
                  tablet: 16,
                  desktop: 16,
                ),
              ),
              child: body,
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
              child: GradientText(
                "Home",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            PopupMenuItem(
              value: 2,
              child: GradientText(
                "Services",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            PopupMenuItem(
              value: 3,
              child: GradientText(
                "Portfolio",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            PopupMenuItem(
              value: 4,
              child: GradientText(
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
          onPressed: () {},
        ),
        TransparentTextButton(
          title: "Services",
          onPressed: () {},
        ),
        TransparentTextButton(
          title: "Portfolio",
          onPressed: () {},
        ),
        PrimaryTextButton(
          title: "Resume",
          width: 100,
          onPressed: () {},
        ),
        const SizedBox(
          width: 25,
        )
      ],
    );
  }
}
