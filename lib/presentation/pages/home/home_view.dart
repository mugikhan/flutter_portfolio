import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/presentation/pages/home/home_viewmodel.dart';
import 'package:flutter_portfolio/presentation/widgets/buttons/primary_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: const [
            Flexible(
              child: TitleSection(),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}

class TitleSection extends ViewModelWidget<HomeViewModel> {
  const TitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Hi, my name is',
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.left,
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Mugi Khan.',
                    speed: const Duration(milliseconds: 500),
                    textStyle: Theme.of(context).textTheme.displayLarge!,
                    textAlign: TextAlign.left,
                    curve: Curves.easeInOut,
                  ),
                ],
                repeatForever: false,
                isRepeatingAnimation: false,
              ),
              Text(
                "I'm a fullstack developer who has experience with web, mobile and backend development.",
                style: Theme.of(context).textTheme.displaySmall,
                textAlign: TextAlign.left,
              ),
              Text(
                "After discovering my passion for gaming and programming in high school, I couldn’t get enough. I’ve made quite a few games and websites as projects and I’m looking forward to bringing that passion into a full-time job.",
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
        Flexible(
          flex: 1,
          child: Image.asset(
            height: 150,
            width: 150,
            "assets/programming.png",
          ),
        )
      ],
    );
  }
}
