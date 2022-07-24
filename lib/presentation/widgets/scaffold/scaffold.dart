import 'package:flutter/material.dart';

class HotelScaffold extends StatelessWidget {
  const HotelScaffold({Key? key, required this.title, required this.body})
      : super(key: key);

  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
      ),
      body: body,
    );
  }
}
