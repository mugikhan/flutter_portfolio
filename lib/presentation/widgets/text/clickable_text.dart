import 'package:flutter/material.dart';
import 'package:flutter_portfolio/presentation/widgets/text/gradient_text.dart';

class ClickableText extends StatelessWidget {
  const ClickableText(
    this.text, {
    Key? key,
    required this.onTap,
    this.style,
  }) : super(key: key);

  final String text;
  final VoidCallback onTap;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: InkWell(
        onTap: onTap,
        child: SelectableText(
          text,
          style: style,
        ),
      ),
    );
  }
}

class GradientClickableText extends StatelessWidget {
  const GradientClickableText(
    this.text, {
    Key? key,
    required this.onTap,
    this.style,
  }) : super(key: key);

  final String text;
  final VoidCallback onTap;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: InkWell(
        onTap: onTap,
        child: GradientText(
          text,
          style: style,
        ),
      ),
    );
  }
}
