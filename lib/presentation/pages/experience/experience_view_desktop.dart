import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/data/models/employment/employment.dart';
import 'package:flutter_portfolio/presentation/design/color_pallete.dart';
import 'package:flutter_portfolio/presentation/design/ui_helpers.dart';
import 'package:flutter_portfolio/presentation/pages/experience/experience_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:timelines/timelines.dart';

class ExperienceViewDesktop extends ViewModelWidget<ExperienceViewModel> {
  ExperienceViewDesktop({Key? key}) : super(key: key);

  final colorPalette = locator<ColorPalette>();

  @override
  Widget build(BuildContext context, ExperienceViewModel viewModel) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: FixedTimeline.tileBuilder(
          theme: TimelineTheme.of(context).copyWith(
            nodePosition: 0,
            connectorTheme: TimelineTheme.of(context).connectorTheme.copyWith(
                  thickness: 1.0,
                ),
            indicatorTheme: TimelineTheme.of(context).indicatorTheme.copyWith(
                  size: 10.0,
                  position: 0.5,
                ),
          ),
          builder: TimelineTileBuilder(
            indicatorBuilder: (_, index) =>
                Indicator.outlined(borderWidth: 1.0),
            startConnectorBuilder: (_, index) => Connector.solidLine(),
            endConnectorBuilder: (_, index) => Connector.solidLine(),
            contentsBuilder: (_, index) {
              return Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(data[index].institute),
              );
            },
            // itemExtentBuilder: (_, index) => isEdgeIndex(index) ? 10.0 : 30.0,
            // nodeItemOverlapBuilder: (_, index) =>
            //     isEdgeIndex(index) ? true : null,
            itemCount: 1,
          ),
        ),
      ),
    );
  }

  var data = [
    const Employment(
      institute: "Entelect",
      duration: "01/2021 - Present",
      description:
          '''I joined Entelect at the start of 2021 for corporate project exposure. 
    My focus was on full stack development but initially I was assigned to a bank as a mobile developer. 
    I started work originally as an android developer on the banks business banking mobile application 
    using Backbase. The bulk of the work was on the iOS side and this resulted in me pivoting and 
    learning swift.''',
      skills: {
        "Development": '''Learnt how to develop and integrate APIs in android 
        using Kotlin and Swift.''',
        "Backbase": '''Completed backbase training and started development on 
         android and iOS.''',
        "Project Management": '''Learnt how to manage sprints and tasks using 
         Jira and Confluence.''',
        "Interpersonal Skills": '''Learnt how to communicate with clarity and 
         diplomacy in a larger team.''',
      },
    )
  ];
}
