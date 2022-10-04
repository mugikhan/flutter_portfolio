import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/presentation/design/color_pallete.dart';
import 'package:flutter_portfolio/presentation/design/ui_helpers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    Key? key,
    required this.title,
    this.width = 175,
    this.height = 200,
    required this.fontAwesomeIcon,
    this.iconColor = Colors.green,
  }) : super(key: key);

  final String title;
  final double? width;
  final double? height;
  final IconData fontAwesomeIcon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F1F1).withOpacity(0.6),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFF1F1F1).withOpacity(0.6),
            spreadRadius: 2,
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 96,
            width: 96,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xFFDADADA).withOpacity(0.7),
              shape: BoxShape.circle,
            ),
            child: FaIcon(
              fontAwesomeIcon,
              color: iconColor,
              size: 48,
            ),
          ),
          UIHelper.verticalSpaceMedium(),
          SelectableText(
            title,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
