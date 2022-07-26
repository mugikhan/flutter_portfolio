import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/presentation/common/utils/asset_image_util.dart';
import 'package:flutter_portfolio/presentation/design/color_pallete.dart';
import 'package:flutter_portfolio/presentation/design/ui_helpers.dart';
import 'package:flutter_portfolio/presentation/pages/home/home_viewmodel.dart';
import 'package:flutter_portfolio/presentation/widgets/buttons/outline_button.dart';
import 'package:flutter_portfolio/presentation/widgets/scaffold/scaffold.dart';
import 'package:flutter_portfolio/presentation/widgets/text/gradient_text.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.nonReactive(
      builder: (context, viewModel, child) => PrimaryScaffold(
        body: ScreenTypeLayout.builder(
          mobile: (BuildContext context) => ListView(
            padding: UIHelper.listViewPaddingMobile,
            children: const [
              TitleSection(),
              SizedBox(
                height: 50,
              ),
              AboutSection(),
            ],
          ),
          desktop: (BuildContext context) => ListView(
            padding: UIHelper.listViewPaddingDesktop,
            children: const [
              TitleSection(),
              SizedBox(
                height: 50,
              ),
              AboutSection(),
            ],
          ),
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
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) => Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GradientText(
                  'Hi, my name is',
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFB73FE0),
                      Color(0xFFDB20DB),
                      Color(0xFFB73FE0),
                      Color(0xFF8867E8),
                      Color(0xFF6E78E6),
                      Color(0xFF27BAF7),
                    ],
                  ),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 25,
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Mugi Khan.',
                      speed: const Duration(milliseconds: 500),
                      textStyle: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontWeight: FontWeight.w800),
                      textAlign: TextAlign.left,
                      curve: Curves.easeInOut,
                    ),
                  ],
                  repeatForever: false,
                  isRepeatingAnimation: false,
                ),
                const SizedBox(
                  height: 25,
                ),
                GradientText(
                  "I'm a fullstack developer who has experience with mobile, web "
                  "and backend development.",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w700),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFB73FE0),
                      Color(0xFFDB20DB),
                      Color(0xFFB73FE0),
                      Color(0xFF8867E8),
                      Color(0xFF6E78E6),
                      Color(0xFF27BAF7),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          Flexible(
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: ColorPalette.tertiaryGrey.withOpacity(0.8),
                    spreadRadius: 4,
                  )
                ],
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: ExactAssetImage(
                    "assets/background-notebook.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      mobile: (BuildContext context) => const TitleSectionMobile(),
    );
  }
}

class TitleSectionMobile extends ViewModelWidget<HomeViewModel> {
  const TitleSectionMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        GradientText(
          'Hi, my name is',
          gradient: const LinearGradient(
            colors: [
              Color(0xFFB73FE0),
              Color(0xFFDB20DB),
              Color(0xFFB73FE0),
              Color(0xFF8867E8),
              Color(0xFF6E78E6),
              Color(0xFF27BAF7),
            ],
          ),
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(
          height: 25,
        ),
        AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              'Mugi Khan.',
              speed: const Duration(milliseconds: 500),
              textStyle: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontWeight: FontWeight.w800),
              textAlign: TextAlign.left,
              curve: Curves.easeInOut,
            ),
          ],
          repeatForever: false,
          isRepeatingAnimation: false,
        ),
        const SizedBox(
          height: 25,
        ),
        GradientText(
          "I'm a fullstack developer who has experience with mobile, web "
          "and backend development.",
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.w700),
          gradient: const LinearGradient(
            colors: [
              Color(0xFFB73FE0),
              Color(0xFFDB20DB),
              Color(0xFFB73FE0),
              Color(0xFF8867E8),
              Color(0xFF6E78E6),
              Color(0xFF27BAF7),
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: ColorPalette.tertiaryGrey.withOpacity(0.8),
                spreadRadius: 4,
              )
            ],
            borderRadius: BorderRadius.circular(8.0),
            image: const DecorationImage(
              image: ExactAssetImage(
                "assets/background-notebook.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

class AboutSection extends ViewModelWidget<HomeViewModel> {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) => Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SelectableText(
                  'About me',
                  style: Theme.of(context).textTheme.displaySmall,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 25,
                ),
                GradientText(
                  "Hello! I'm Mugi Khan, an experienced software engineer based in "
                  "Johannesburg, South Africa.",
                  style: Theme.of(context).textTheme.titleLarge,
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFB73FE0),
                      Color(0xFFDB20DB),
                      Color(0xFFB73FE0),
                      Color(0xFF8867E8),
                      Color(0xFF6E78E6),
                      Color(0xFF27BAF7),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SelectableText(
                  "I have been working as a fullstack developer for the past "
                  "${getYearsSince2018()} years. I have worked in multiple environments "
                  "from startups to corporate clients. I have worked in multi-cultural teams "
                  "varying in size from 3 to 30 team members. "
                  "I love learning new technologies and frameworks, such as flutter, react "
                  "or handlebars.js. I have deployed multiple projects including this one to "
                  "Amazon Web Services (AWS) and traditional web servers. "
                  "If you are interested in working together, feel free to contact me.",
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    GradientOutlineButton(
                      onPressed: () {
                        viewModel.navigateToContact();
                      },
                      title: "Get In Touch",
                      width: 150,
                    ),
                    UIHelper.horizontalSpaceMedium(),
                    GradientOutlineButton(
                      onPressed: () {
                        viewModel.shareWebsite();
                      },
                      title: "Share",
                      width: 150,
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          Flexible(
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: ColorPalette.tertiaryGrey.withOpacity(0.8),
                    spreadRadius: 4,
                  )
                ],
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: ExactAssetImage(
                    "assets/mugi.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      mobile: (BuildContext context) => const AboutSectionMobile(),
    );
  }
}

class AboutSectionMobile extends ViewModelWidget<HomeViewModel> {
  const AboutSectionMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SelectableText(
          'About me',
          style: Theme.of(context).textTheme.displaySmall,
          textAlign: TextAlign.left,
        ),
        const SizedBox(
          height: 25,
        ),
        GradientText(
          "Hello! I'm Mugi Khan, an experienced software engineer based in "
          "Johannesburg, South Africa.",
          style: Theme.of(context).textTheme.titleLarge,
          gradient: const LinearGradient(
            colors: [
              Color(0xFFB73FE0),
              Color(0xFFDB20DB),
              Color(0xFFB73FE0),
              Color(0xFF8867E8),
              Color(0xFF6E78E6),
              Color(0xFF27BAF7),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        SelectableText(
          "I have been working as a fullstack developer for the past "
          "${getYearsSince2018()} years. I have worked in multiple environments "
          "from startups to corporate clients. I have worked in multi-cultural teams "
          "varying in size from 3 to 30 team members. "
          "I love learning new technologies and frameworks, such as flutter, react "
          "or handlebars.js. I have deployed multiple projects including this one to "
          "Amazon Web Services (AWS) and traditional web servers. "
          "If you are interested in working together, feel free to contact me.",
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.left,
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: ColorPalette.tertiaryGrey.withOpacity(0.8),
                spreadRadius: 4,
              )
            ],
            borderRadius: BorderRadius.circular(8.0),
            image: const DecorationImage(
              image: ExactAssetImage(
                "assets/mugi.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        GradientOutlineButton(
          onPressed: () {
            viewModel.navigateToContact();
          },
          title: "Get In Touch",
          width: 150,
        ),
        UIHelper.verticalSpaceMedium(),
        GradientOutlineButton(
          onPressed: () {
            viewModel.shareWebsite();
          },
          title: "Share",
          width: 150,
        )
      ],
    );
  }
}

String getYearsSince2018() {
  return "${DateTime.now().year - 2018}";
}
