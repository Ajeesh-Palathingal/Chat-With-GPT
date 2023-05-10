import 'dart:ffi';

import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String label;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;

  const TextWidget(
      {super.key,
      required this.label,
      this.fontSize = 15,
      required this.color,
      this.fontWeight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$label",
      style:
          TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color),
    );
  }
}
