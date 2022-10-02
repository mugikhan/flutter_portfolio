import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/data/models/employment/employment.dart';
import 'package:flutter_portfolio/data/models/project/project.dart';
import 'package:flutter_portfolio/presentation/common/utils/asset_image_util.dart';
import 'package:flutter_portfolio/presentation/design/color_pallete.dart';
import 'package:flutter_portfolio/presentation/design/ui_helpers.dart';
import 'package:flutter_portfolio/presentation/pages/experience/experience_viewmodel.dart';
import 'package:flutter_portfolio/presentation/widgets/buttons/outline_button.dart';
import 'package:stacked/stacked.dart';
import 'package:timelines/timelines.dart';

class ExperienceViewMobile extends ViewModelWidget<ExperienceViewModel> {
  const ExperienceViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ExperienceViewModel viewModel) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: FixedTimeline.tileBuilder(
              theme: TimelineTheme.of(context).copyWith(
                nodePosition: 0,
                connectorTheme:
                    TimelineTheme.of(context).connectorTheme.copyWith(
                          thickness: 1.0,
                        ),
                indicatorTheme:
                    TimelineTheme.of(context).indicatorTheme.copyWith(
                          size: 25.0,
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
                    padding: const EdgeInsets.only(left: 8.0),
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
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
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
              ),
            ),
          ),
          UIHelper.verticalSpaceMedium(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Portfolio of projects",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              )
            ],
          ),
          UIHelper.verticalSpaceMedium(),
          const ProjectsSection(),
        ],
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

class ProjectsSection extends ViewModelWidget<ExperienceViewModel> {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context, ExperienceViewModel viewModel) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 400.0,
        viewportFraction: 1.0,
        autoPlay: true,
        pauseAutoPlayOnTouch: true,
      ),
      itemCount: ProjectConstants.projects.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        Project project = ProjectConstants.projects[itemIndex];
        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: ColorPalette.primary,
              )),
          margin: const EdgeInsets.only(
            bottom: 10,
            right: 10,
            left: 10,
          ),
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    webAssetImage(project.appPhotos),
                    width: 70,
                    height: 70,
                  ),
                ],
              ),
              UIHelper.horizontalSpaceSmall(),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        project.title,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    UIHelper.verticalSpaceMedium(),
                    Flexible(
                      child: Text(
                        project.description,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    UIHelper.verticalSpaceMedium(),
                    Flexible(
                      child: Text(
                        "Technologies used",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    UIHelper.verticalSpaceSmall(),
                    TechnologiesSection(
                      technologies: project.techUsed,
                    ),
                    UIHelper.verticalSpaceSmall(),
                    GradientOutlineButton(
                      onPressed: () async {
                        await viewModel.onLinkTap(project.projectLink);
                      },
                      title: project.buttonText ?? "Coming soon",
                      width: 150,
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class TechnologiesSection extends ViewModelWidget<ExperienceViewModel> {
  const TechnologiesSection({
    super.key,
    required this.technologies,
  });

  final Map<String, String> technologies;

  @override
  Widget build(BuildContext context, ExperienceViewModel viewModel) {
    return Wrap(
      children: techImage(technologies, context),
    );
  }

  List<Widget> techImage(
      Map<String, String> technologies, BuildContext context) {
    List<Widget> list = [];
    for (MapEntry<String, String> technology in technologies.entries) {
      list.add(
        Container(
          margin: const EdgeInsets.all(8.0),
          width: 25,
          child: Image.asset(webAssetImage("assets/${technology.value}")),
        ),
      );
    }
    return list;
  }
}
