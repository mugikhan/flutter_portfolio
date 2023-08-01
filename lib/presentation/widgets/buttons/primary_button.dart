import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/presentation/design/color_pallete.dart';
import 'package:flutter_portfolio/presentation/widgets/text/gradient_text.dart';

class PrimaryTextButton extends StatelessWidget {
  const PrimaryTextButton({
    Key? key,
    required this.onPressed,
    required this.title,
    this.width,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String title;
  final double? width;

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

class GradientPrimaryButton extends StatelessWidget {
  const GradientPrimaryButton({
    Key? key,
    required this.onPressed,
    required this.title,
    this.width,
    this.gradient,
    this.isLoading = false,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String title;
  final double? width;
  final Gradient? gradient;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: Theme.of(context).textButtonTheme.style?.copyWith(
            fixedSize: MaterialStateProperty.all<Size>(
              Size(width ?? double.maxFinite, 50),
            ),
            side: MaterialStateProperty.all<BorderSide>(
              const BorderSide(color: Colors.grey),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
              ColorPalette.surface,
            ),
          ),
      child: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : GradientText(
              title,
              gradient: gradient ??
                  const LinearGradient(
                    colors: [
                      Color(0xFFB73FE0),
                      Color(0xFFDB20DB),
                      Color(0xFFB73FE0),
                      Color(0xFF8867E8),
                      Color(0xFF6E78E6),
                      Color(0xFF27BAF7),
                    ],
                  ),
              style: Theme.of(context)
                  .textButtonTheme
                  .style
                  ?.textStyle
                  ?.resolve(MaterialState.values.toSet()),
            ),
    );
  }
}

class PrimaryIconButton extends StatelessWidget {
  const PrimaryIconButton({
    Key? key,
    required this.onPressed,
    required this.title,
    this.width,
    required this.iconData,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String title;
  final double? width;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: Theme.of(context).textButtonTheme.style?.copyWith(
            fixedSize: MaterialStateProperty.all<Size>(
              Size(width ?? double.maxFinite, 50),
            ),
          ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(
              iconData,
              color: Colors.white,
            ),
          ),
          Text(
            title,
            style: Theme.of(context)
                .textButtonTheme
                .style
                ?.textStyle
                ?.resolve(MaterialState.values.toSet()),
          ),
        ],
      ),
    );
  }
}
