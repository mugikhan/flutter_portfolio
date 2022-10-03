import 'package:flutter/material.dart';
import 'package:flutter_portfolio/presentation/design/color_pallete.dart';
import 'package:flutter_portfolio/presentation/design/ui_helpers.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    Key? key,
    required this.textEditingController,
    required this.focusNode,
    this.keyboardType = TextInputType.text,
    required this.hintText,
    this.width = double.infinity,
    this.obscureText = false,
    this.maxLines,
    required this.title,
    this.validationMessage,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final FocusNode focusNode;
  final TextInputType keyboardType;
  final String hintText;
  final double width;
  final bool obscureText;
  final int? maxLines;
  final String title;
  final String? validationMessage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 70,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
              enabled: true,
              border: const OutlineInputBorder(),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorPalette.tertiaryGrey,
                ),
              ),
              fillColor: ColorPalette.surface,
              filled: true,
              hintText: hintText,
            ),
            style: Theme.of(context).textTheme.bodyLarge,
            controller: textEditingController,
            keyboardType: keyboardType,
            focusNode: focusNode,
            obscureText: obscureText,
            maxLines: maxLines,
          ),
          validationMessage != null
              ? Flexible(
                  flex: 0,
                  child: Text(
                    validationMessage!,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: ColorPalette.error),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}

class CustomTextArea extends StatelessWidget {
  const CustomTextArea({
    Key? key,
    required this.textEditingController,
    required this.focusNode,
    this.keyboardType = TextInputType.text,
    required this.hintText,
    this.maxWidth = double.infinity,
    this.obscureText = false,
    this.maxLines,
    required this.title,
    this.validationMessage,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final FocusNode focusNode;
  final TextInputType keyboardType;
  final String hintText;
  final double maxWidth;
  final bool obscureText;
  final int? maxLines;
  final String title;
  final String? validationMessage;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: maxWidth,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            UIHelper.verticalSpaceSmall(),
            TextFormField(
              decoration: InputDecoration(
                enabled: true,
                border: const OutlineInputBorder(),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorPalette.tertiaryGrey,
                  ),
                ),
                fillColor: ColorPalette.surface,
                filled: true,
                hintText: hintText,
              ),
              controller: textEditingController,
              keyboardType: keyboardType,
              focusNode: focusNode,
              obscureText: obscureText,
              maxLines: maxLines,
            ),
            validationMessage != null
                ? Flexible(
                    flex: 0,
                    child: Text(
                      validationMessage!,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: ColorPalette.error),
                    ),
                  )
                : Container()
          ],
        ));
  }
}
