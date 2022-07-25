import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  const GradientText(this.text,
      {Key? key, this.gradient, this.style, this.textAlign = TextAlign.start})
      : super(key: key);

  final String text;
  final TextStyle? style;
  final Gradient? gradient;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient != null
          ? gradient!.createShader(
              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
            )
          : const LinearGradient(
              colors: [
                Color(0xFFB73FE0),
                Color(0xFFDB20DB),
                Color(0xFFB73FE0),
                Color(0xFF8867E8),
                Color(0xFF6E78E6),
                Color(0xFF27BAF7),
              ],
            ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
      child: SelectableText(
        text,
        style: style,
        textAlign: textAlign,
      ),
    );
  }
}
