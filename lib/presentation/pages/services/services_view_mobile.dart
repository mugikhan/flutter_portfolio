import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/presentation/design/color_pallete.dart';
import 'package:flutter_portfolio/presentation/design/ui_helpers.dart';
import 'package:flutter_portfolio/presentation/pages/services/services_viewmodel.dart';
import 'package:flutter_portfolio/presentation/widgets/service_card/service_card.dart';
import 'package:flutter_portfolio/presentation/widgets/text/gradient_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

class ServicesViewMobile extends ViewModelWidget<ServicesViewModel> {
  ServicesViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ServicesViewModel viewModel) {
    return ListView(
      padding: UIHelper.listViewPaddingMobile,
      children: [
        GradientText(
          "What does a fullstack developer do?",
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        UIHelper.verticalSpaceSmall(),
        SelectableText(
          "I can help you make that website or mobile app idea a reality.",
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: ColorPalette.secondaryGrey),
          textAlign: TextAlign.center,
        ),
        UIHelper.verticalSpaceLarge(),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Flexible(
              child: ServiceCard(
                title: "Mobile App Development",
                fontAwesomeIcon: FontAwesomeIcons.mobileScreenButton,
                iconColor: Color(0xFF1693C3),
              ),
            ),
            UIHelper.verticalSpaceLarge(),
            const Flexible(
              child: ServiceCard(
                title: "Website Development",
                fontAwesomeIcon: FontAwesomeIcons.laptopCode,
                iconColor: Color(0xFF2964EE),
              ),
            ),
            UIHelper.verticalSpaceLarge(),
            const Flexible(
              child: ServiceCard(
                title: "Backend Development",
                fontAwesomeIcon: FontAwesomeIcons.code,
                iconColor: Color(0xFFB821C9),
              ),
            ),
            UIHelper.verticalSpaceLarge(),
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
