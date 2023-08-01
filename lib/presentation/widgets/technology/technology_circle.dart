import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

class TechnologyCircle extends StatelessWidget {
  const TechnologyCircle({
    Key? key,
    this.radius = 60,
    required this.assetPath,
  }) : super(key: key);

  final double radius;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return PlayAnimation<double>(
        tween: 0.0.tweenTo(1.0),
        curve: Curves.easeInCubic,
        builder: (context, child, value) {
          return Opacity(
            opacity: value,
            child: CircleAvatar(
              backgroundColor: Colors.black,
              minRadius: 40,
              maxRadius: radius,
              child: Container(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  assetPath,
                  fit: BoxFit.contain,
                  height: 70,
                ),
              ),
            ),
          );
        });
  }
}
