import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/presentation/design/color_pallete.dart';
import 'package:flutter_portfolio/presentation/design/ui_helpers.dart';
import 'package:flutter_portfolio/presentation/pages/services/services_viewmodel.dart';
import 'package:flutter_portfolio/presentation/widgets/service_card/service_card.dart';
import 'package:flutter_portfolio/presentation/widgets/text/gradient_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

class ServicesViewDesktop extends ViewModelWidget<ServicesViewModel> {
  ServicesViewDesktop({Key? key}) : super(key: key);

  final colorPalette = locator<ColorPalette>();

  @override
  Widget build(BuildContext context, ServicesViewModel viewModel) {
    return ListView(
      padding: UIHelper.listViewPaddingDesktop,
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
              ?.copyWith(color: colorPalette.secondaryGrey),
        ),
        UIHelper.verticalSpaceLarge(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Flexible(
              child: ServiceCard(
                title: "Mobile App Development",
                fontAwesomeIcon: FontAwesomeIcons.mobileScreenButton,
                iconColor: Color(0xFF1693C3),
              ),
            ),
            UIHelper.horizontalSpaceLarge(),
            const Flexible(
              child: ServiceCard(
                title: "Website Development",
                fontAwesomeIcon: FontAwesomeIcons.laptopCode,
                iconColor: Color(0xFF2964EE),
              ),
            ),
            UIHelper.horizontalSpaceLarge(),
            const Flexible(
              child: ServiceCard(
                title: "Backend Development",
                fontAwesomeIcon: FontAwesomeIcons.code,
                iconColor: Color(0xFFB821C9),
              ),
            ),
            UIHelper.horizontalSpaceLarge(),
            const Flexible(
              child: ServiceCard(
                title: "Maintenance & Upgrades",
                fontAwesomeIcon: FontAwesomeIcons.hammer,
                iconColor: Color(0xFF9F21EE),
              ),
            ),
          ],
        )
      ],
    );
  }
}
