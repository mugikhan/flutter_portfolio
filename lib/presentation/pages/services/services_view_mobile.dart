import 'package:flutter/material.dart';
import 'package:flutter_portfolio/presentation/design/ui_helpers.dart';
import 'package:flutter_portfolio/presentation/pages/services/services_viewmodel.dart';
import 'package:flutter_portfolio/presentation/widgets/service_card/service_card.dart';
import 'package:flutter_portfolio/presentation/widgets/text/gradient_text.dart';
import 'package:rive/rive.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:simple_animations/timeline_tween/timeline_tween.dart';
import 'package:stacked/stacked.dart';
import 'package:supercharged/supercharged.dart';

class ServicesViewMobile extends ViewModelWidget<ServicesViewModel> {
  ServicesViewMobile({Key? key}) : super(key: key);

  final tween = TimelineTween<AniProps>()
    ..addScene(begin: 0.milliseconds, duration: 750.milliseconds).animate(
      AniProps.offset,
      tween: Tween<Offset>(
          begin: const Offset(-100, 0.0), end: const Offset(0, 0.0)),
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
          begin: const Offset(-100, 0.0), end: const Offset(0, 0.0)),
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
          begin: const Offset(-100, 0.0), end: const Offset(0, 0.0)),
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
          begin: const Offset(-100, 0.0), end: const Offset(0, 0.0)),
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
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.6),
                            spreadRadius: 2,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: GradientText(
                              "What does a fullstack developer do?",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                          UIHelper.verticalSpaceSmall(),
                          Flexible(
                            child: Text(
                              "I can help you make that website or mobile app idea a reality.",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Flexible(
                child: PlayAnimation(
                    tween: tween,
                    duration: tween.duration,
                    builder: (context, child, TimelineValue<AniProps> value) {
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
              UIHelper.verticalSpaceMedium(),
              Flexible(
                child: PlayAnimation(
                    tween: tween2,
                    duration: tween.duration,
                    delay: 0.5.seconds,
                    builder: (context, child, TimelineValue<AniProps> value) {
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
              UIHelper.verticalSpaceMedium(),
              Flexible(
                child: PlayAnimation(
                    tween: tween3,
                    duration: tween.duration,
                    delay: 1.seconds,
                    builder: (context, child, TimelineValue<AniProps> value) {
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
              UIHelper.verticalSpaceMedium(),
              Flexible(
                child: PlayAnimation(
                    tween: tween4,
                    duration: tween.duration,
                    delay: 1.5.seconds,
                    builder: (context, child, TimelineValue<AniProps> value) {
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
              UIHelper.verticalSpaceMedium(),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: const RiveAnimation.asset(
                  'assets/rive/tech_bounce_mobile.riv',
                  fit: BoxFit.contain,
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
