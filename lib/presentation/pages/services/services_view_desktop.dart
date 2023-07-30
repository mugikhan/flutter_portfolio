import 'package:flutter/material.dart';
import 'package:flutter_portfolio/presentation/design/ui_helpers.dart';
import 'package:flutter_portfolio/presentation/pages/services/services_viewmodel.dart';
import 'package:flutter_portfolio/presentation/widgets/service_card/service_card.dart';
import 'package:flutter_portfolio/presentation/widgets/text/gradient_text.dart';
import 'package:rive/rive.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:stacked/stacked.dart';
import 'package:supercharged/supercharged.dart';

class ServicesViewDesktop extends ViewModelWidget<ServicesViewModel> {
  ServicesViewDesktop({Key? key}) : super(key: key);

  final tween = TimelineTween<AniProps>()
    ..addScene(begin: 0.milliseconds, duration: 750.milliseconds).animate(
      AniProps.offset,
      tween: Tween<Offset>(
          begin: const Offset(-200, 0.0), end: const Offset(0, 0.0)),
      curve: Curves.easeInOutBack,
    )
    ..addScene(begin: 0.milliseconds, duration: 750.milliseconds).animate(
      AniProps.opacity,
      tween: Tween<double>(begin: 0, end: 1),
    );

  final tween2 = TimelineTween<AniProps>()
    ..addScene(begin: 0.milliseconds, duration: 750.milliseconds).animate(
      AniProps.offset,
      tween: Tween<Offset>(
          begin: const Offset(-200, 0.0), end: const Offset(0, 0.0)),
      curve: Curves.easeInOutBack,
    )
    ..addScene(begin: 0.milliseconds, duration: 750.milliseconds).animate(
      AniProps.opacity,
      tween: Tween<double>(begin: 0, end: 1),
    );

  final tween3 = TimelineTween<AniProps>()
    ..addScene(begin: 0.milliseconds, duration: 750.milliseconds).animate(
      AniProps.offset,
      tween: Tween<Offset>(
          begin: const Offset(-200, 0.0), end: const Offset(0, 0.0)),
      curve: Curves.easeInOutBack,
    )
    ..addScene(begin: 0.milliseconds, duration: 750.milliseconds).animate(
      AniProps.opacity,
      tween: Tween<double>(begin: 0, end: 1),
    );

  final tween4 = TimelineTween<AniProps>()
    ..addScene(begin: 0.milliseconds, duration: 750.milliseconds).animate(
      AniProps.offset,
      tween: Tween<Offset>(
          begin: const Offset(-200, 0.0), end: const Offset(0, 0.0)),
      curve: Curves.easeInOutBack,
    )
    ..addScene(begin: 0.milliseconds, duration: 750.milliseconds).animate(
      AniProps.opacity,
      tween: Tween<double>(begin: 0, end: 1),
    );

  @override
  Widget build(BuildContext context, ServicesViewModel viewModel) {
    return Stack(
      fit: StackFit.expand,
      children: [
        const SizedBox.expand(
          child: RiveAnimation.asset(
            'assets/rive/mobile.riv',
            fit: BoxFit.cover,
          ),
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF333333),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xFF333333),
                          spreadRadius: 2,
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GradientText(
                          "What does a fullstack developer do?",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        UIHelper.verticalSpaceSmall(),
                        SelectableText(
                          "I can help you make that website or mobile app idea a reality.",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              UIHelper.verticalSpaceLarge(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: PlayAnimation(
                        tween: tween,
                        duration: tween.duration,
                        builder:
                            (context, child, TimelineValue<AniProps> value) {
                          return Transform.translate(
                            offset: value.get(AniProps.offset),
                            child: Opacity(
                              opacity: value.get(AniProps.opacity),
                              child: const ServiceCard(
                                title: "Mobile App Development",
                                assetPath: "assets/svg/mobile-development.svg",
                              ),
                            ),
                          );
                        }),
                  ),
                  UIHelper.horizontalSpaceLarge(),
                  Flexible(
                    child: PlayAnimation(
                        tween: tween2,
                        duration: tween.duration,
                        delay: 0.5.seconds,
                        builder:
                            (context, child, TimelineValue<AniProps> value) {
                          return Transform.translate(
                            offset: value.get(AniProps.offset),
                            child: Opacity(
                              opacity: value.get(AniProps.opacity),
                              child: const ServiceCard(
                                title: "Website Development",
                                assetPath: "assets/svg/coding-web.svg",
                              ),
                            ),
                          );
                        }),
                  ),
                  UIHelper.horizontalSpaceLarge(),
                  Flexible(
                    child: PlayAnimation(
                        tween: tween3,
                        duration: tween.duration,
                        delay: 1.seconds,
                        builder:
                            (context, child, TimelineValue<AniProps> value) {
                          return Transform.translate(
                            offset: value.get(AniProps.offset),
                            child: Opacity(
                              opacity: value.get(AniProps.opacity),
                              child: const ServiceCard(
                                title: "Backend Development",
                                assetPath: "assets/svg/code.svg",
                              ),
                            ),
                          );
                        }),
                  ),
                  UIHelper.horizontalSpaceLarge(),
                  Flexible(
                    child: PlayAnimation(
                        tween: tween4,
                        duration: tween.duration,
                        delay: 1.5.seconds,
                        builder:
                            (context, child, TimelineValue<AniProps> value) {
                          return Transform.translate(
                            offset: value.get(AniProps.offset),
                            child: Opacity(
                              opacity: value.get(AniProps.opacity),
                              child: const ServiceCard(
                                title: "Maintenance & Upgrades",
                                assetPath: "assets/svg/maintenance.svg",
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
              UIHelper.verticalSpaceMedium(),
              SizedBox(
                height: 500,
                width: MediaQuery.of(context).size.width,
                child: const RiveAnimation.asset(
                  'assets/rive/tech_bounce.riv',
                  fit: BoxFit.cover,
                  artboard: 'flutter',
                  stateMachines: ['Flutter State Machine'],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
