import 'package:flutter/material.dart';
import 'package:flutter_portfolio/data/models/employment/employment.dart';
import 'package:flutter_portfolio/presentation/design/ui_helpers.dart';
import 'package:flutter_portfolio/presentation/pages/experience/experience_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:timelines/timelines.dart';

class ExperienceViewMobile extends ViewModelWidget<ExperienceViewModel> {
  const ExperienceViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ExperienceViewModel viewModel) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: FixedTimeline.tileBuilder(
          theme: TimelineTheme.of(context).copyWith(
            nodePosition: 0,
            connectorTheme: TimelineTheme.of(context).connectorTheme.copyWith(
                  thickness: 1.0,
                ),
            indicatorTheme: TimelineTheme.of(context).indicatorTheme.copyWith(
                  size: 15.0,
                ),
            indicatorPosition: 0,
          ),
          builder: TimelineTileBuilder(
            indicatorBuilder: (_, index) => const OutlinedDotIndicator(
              borderWidth: 1.5,
            ),
            startConnectorBuilder: (_, index) => Connector.solidLine(),
            endConnectorBuilder: (_, index) => Connector.solidLine(),
            itemCount: EmploymentConstants.employmentData.length,
            contentsBuilder: (_, index) {
              final Employment employment =
                  EmploymentConstants.employmentData[index];
              return Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      flex: 0,
                      child: TitleSection(
                        institute: employment.institute,
                        duration: employment.duration,
                      ),
                    ),
                    UIHelper.verticalSpaceSmall(),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              employment.position,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.color
                                        ?.withOpacity(0.4),
                                  ),
                            ),
                            UIHelper.verticalSpaceSmall(),
                            Text(
                              employment.description,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            UIHelper.verticalSpaceSmall(),
                            Expanded(
                              child: SkillsSection(
                                skills: employment.skills,
                              ),
                            ),
                            UIHelper.verticalSpaceSmall(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            // itemExtentBuilder: (_, index) => isEdgeIndex(index) ? 10.0 : 30.0,
            // nodeItemOverlapBuilder: (_, index) =>
            //     isEdgeIndex(index) ? true : null,
          ),
        ),
      ),
    );
  }
}

class TitleSection extends ViewModelWidget<ExperienceViewModel> {
  const TitleSection({
    super.key,
    required this.institute,
    required this.duration,
  });

  final String institute;
  final String duration;

  @override
  Widget build(BuildContext context, ExperienceViewModel viewModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            institute,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Flexible(
          child: Text(
            duration,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.color
                      ?.withOpacity(0.4),
                ),
          ),
        ),
      ],
    );
  }
}

class SkillsSection extends ViewModelWidget<ExperienceViewModel> {
  const SkillsSection({
    super.key,
    required this.skills,
  });

  final Map<String, String> skills;

  @override
  Widget build(BuildContext context, ExperienceViewModel viewModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data(skills, context),
    );
  }

  List<Widget> data(Map<String, String> skills, BuildContext context) {
    List<Widget> list = [];
    for (MapEntry<String, String> skill in skills.entries) {
      list.add(
        Text(
          "• ${skill.key}: ${skill.value}",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.4),
        ),
      );
    }
    return list;
  }
}
