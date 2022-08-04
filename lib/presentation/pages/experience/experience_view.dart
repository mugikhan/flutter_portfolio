import 'package:flutter/material.dart';
import 'package:flutter_portfolio/presentation/pages/experience/experience_view_desktop.dart';
import 'package:flutter_portfolio/presentation/pages/experience/experience_viewmodel.dart';
import 'package:flutter_portfolio/presentation/widgets/scaffold/scaffold.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ExperienceViewModel>.nonReactive(
      builder: (context, viewModel, child) => PrimaryScaffold(
        body: ScreenTypeLayout.builder(
          mobile: (BuildContext context) => ExperienceViewDesktop(),
          desktop: (BuildContext context) => ExperienceViewDesktop(),
        ),
      ),
      viewModelBuilder: () => ExperienceViewModel(),
    );
  }
}
