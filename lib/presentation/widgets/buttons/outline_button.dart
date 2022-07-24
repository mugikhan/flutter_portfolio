import 'package:flutter/material.dart';

class PrimaryOutlineButton extends StatelessWidget {
  const PrimaryOutlineButton({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPressed,
        style: Theme.of(context).outlinedButtonTheme.style,
        child: Text(
          title,
          style: Theme.of(context)
              .outlinedButtonTheme
              .style
              ?.textStyle
              ?.resolve(MaterialState.values.toSet()),
        ));
  }
}
