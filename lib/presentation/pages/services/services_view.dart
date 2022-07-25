import 'package:flutter/material.dart';
import 'package:flutter_portfolio/presentation/pages/services/services_view_desktop.dart';
import 'package:flutter_portfolio/presentation/pages/services/services_view_mobile.dart';
import 'package:flutter_portfolio/presentation/pages/services/services_viewmodel.dart';
import 'package:flutter_portfolio/presentation/widgets/scaffold/scaffold.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ServicesViewModel>.nonReactive(
      builder: (context, viewModel, child) => PrimaryScaffold(
        body: ScreenTypeLayout.builder(
          mobile: (BuildContext context) => ServicesViewMobile(),
          desktop: (BuildContext context) => ServicesViewDesktop(),
        ),
      ),
      viewModelBuilder: () => ServicesViewModel(),
    );
  }
}
