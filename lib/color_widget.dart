import 'dart:math';

import 'package:flutter/material.dart';

class ColorWidget extends StatelessWidget {
  final Color myColor = GenerateColor.getColor();

  ColorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 160,
      color: myColor,
    );
  }
}

class GenerateColor {
  static final random = Random();
  static Color getColor() {
    return Color.fromARGB(
      255,
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
    );
  }
}
