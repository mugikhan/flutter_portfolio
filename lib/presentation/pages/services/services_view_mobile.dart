import 'package:flutter/material.dart';
import 'package:flutter_portfolio/presentation/design/ui_helpers.dart';
import 'package:flutter_portfolio/presentation/pages/services/services_viewmodel.dart';
import 'package:flutter_portfolio/presentation/widgets/service_card/service_card.dart';
import 'package:flutter_portfolio/presentation/widgets/text/gradient_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rive/rive.dart';
import 'package:stacked/stacked.dart';

class ServicesViewMobile extends ViewModelWidget<ServicesViewModel> {
  const ServicesViewMobile({Key? key}) : super(key: key);

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
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F1F1),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.6),
                          spreadRadius: 4,
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
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              UIHelper.verticalSpaceMedium(),
              const Flexible(
                child: ServiceCard(
                  title: "Mobile App Development",
                  fontAwesomeIcon: FontAwesomeIcons.mobileScreenButton,
                  iconColor: Color(0xFF1693C3),
                ),
              ),
              UIHelper.verticalSpaceMedium(),
              const Flexible(
                child: ServiceCard(
                  title: "Website Development",
                  fontAwesomeIcon: FontAwesomeIcons.laptopCode,
                  iconColor: Color(0xFF2964EE),
                ),
              ),
              UIHelper.verticalSpaceMedium(),
              const Flexible(
                child: ServiceCard(
                  title: "Backend Development",
                  fontAwesomeIcon: FontAwesomeIcons.code,
                  iconColor: Color(0xFFB821C9),
                ),
              ),
              UIHelper.verticalSpaceMedium(),
              const Flexible(
                child: ServiceCard(
                  title: "Maintenance & Upgrades",
                  fontAwesomeIcon: FontAwesomeIcons.hammer,
                  iconColor: Color(0xFF9F21EE),
                ),
              ),
              UIHelper.verticalSpaceMedium(),
            ],
          ),
        ),
      ],
    );
  }
}
