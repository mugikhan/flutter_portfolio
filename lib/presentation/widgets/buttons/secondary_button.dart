import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/presentation/design/color_pallete.dart';

class SecondaryTextButton extends StatelessWidget {
  SecondaryTextButton({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String title;

  final colorPalette = locator<ColorPalette>();

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: Theme.of(context).textButtonTheme.style?.copyWith(
            backgroundColor:
                MaterialStateProperty.all<Color>(colorPalette.secondary)),
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
