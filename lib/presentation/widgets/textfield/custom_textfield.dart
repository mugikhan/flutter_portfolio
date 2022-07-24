import 'package:flutter/material.dart';

class HotelTextfield extends StatelessWidget {
  const HotelTextfield(
      {Key? key,
      required this.textEditingController,
      required this.focusNode,
      this.keyboardType = TextInputType.text,
      required this.hintText,
      this.maxWidth = double.infinity,
      this.obscureText = false})
      : super(key: key);

  final TextEditingController textEditingController;
  final FocusNode focusNode;
  final TextInputType keyboardType;
  final String hintText;
  final double maxWidth;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: maxWidth,
        ),
        child: TextFormField(
          decoration: InputDecoration(
            enabled: true,
            border: const OutlineInputBorder(),
            hintText: hintText,
          ),
          controller: textEditingController,
          keyboardType: keyboardType,
          focusNode: focusNode,
          obscureText: obscureText,
        ));
  }
}
