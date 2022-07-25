import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/presentation/pages/splash/splash_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

enum AniProps { yPosition, opacity }

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      viewModelBuilder: () => SplashViewModel(),
      builder: (context, viewModel, child) {
        final TimelineTween<AniProps> tween = TimelineTween<AniProps>()
          ..addScene(
                  begin: const Duration(milliseconds: 0),
                  end: const Duration(milliseconds: 1000))
              .animate(
            AniProps.yPosition,
            tween: Tween(
                begin: (MediaQuery.of(context).size.height / 2) - 200,
                end: (MediaQuery.of(context).size.height / 2)),
            curve: Curves.easeInOut,
          )
          ..addScene(
                  begin: const Duration(milliseconds: 0),
                  end: const Duration(milliseconds: 1000))
              .animate(
            AniProps.opacity,
            tween: Tween(begin: 0.0, end: 1.0),
            curve: Curves.easeInOut,
          );
        return Scaffold(
          extendBody: true,
          body: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('assets/background-work.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 6.0,
                    sigmaY: 6.0,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4),
                    ),
                  ),
                ),
              ),
              PlayAnimation<TimelineValue<AniProps>>(
                tween: tween,
                duration: tween.duration,
                builder: (context, child, value) {
                  return Positioned(
                    top: value.get(AniProps.yPosition),
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: Opacity(
                      opacity: value.get(AniProps.opacity),
                      child: const Image(
                        image: AssetImage('assets/logo-transparent.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  );
                },
              ),
              Positioned(
                top: (MediaQuery.of(context).size.height / 2) + 310,
                child: Column(
                  children: [
                    AnimatedTextKit(
                      animatedTexts: [
                        ColorizeAnimatedText(
                          'Getting everything ready...',
                          textStyle: Theme.of(context).textTheme.headlineLarge!,
                          speed: const Duration(milliseconds: 750),
                          colors: [
                            const Color(0xFFB73FE0),
                            const Color(0xFFDB20DB),
                            const Color(0xFFB73FE0),
                            const Color(0xFF8867E8),
                            const Color(0xFF6E78E6),
                            const Color(0xFF27BAF7),
                          ],
                        ),
                      ],
                      isRepeatingAnimation: true,
                      totalRepeatCount: 4,
                    )
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
