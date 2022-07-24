import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/presentation/design/color_pallete.dart';

class PrimaryTextButton extends StatelessWidget {
  PrimaryTextButton({
    Key? key,
    required this.onPressed,
    required this.title,
    this.width,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String title;
  final double? width;

  final colorPalette = locator<ColorPalette>();

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: Theme.of(context).textButtonTheme.style?.copyWith(
              fixedSize: MaterialStateProperty.all<Size>(
                Size(width ?? double.maxFinite, 50),
              ),
            ),
        child: Text(
          title,
          style: Theme.of(context)
              .textButtonTheme
              .style
              ?.textStyle
              ?.resolve(MaterialState.values.toSet()),
        ));
  }
}
