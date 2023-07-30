import 'package:flutter/material.dart';
import 'package:flutter_portfolio/presentation/design/ui_helpers.dart';
import 'package:flutter_svg/svg.dart';

enum AniProps { offset, opacity }

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    Key? key,
    required this.title,
    this.width = 175,
    this.height = 200,
    required this.assetPath,
  }) : super(key: key);

  final String title;
  final double? width;
  final double? height;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: const Color(0xFF333333),
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFF333333),
            spreadRadius: 2,
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
            child: SvgPicture.asset(
              assetPath,
              color: Colors.white,
              width: 100,
              height: 100,
            ),
          ),
          UIHelper.verticalSpaceMedium(),
          SelectableText(
            title,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
