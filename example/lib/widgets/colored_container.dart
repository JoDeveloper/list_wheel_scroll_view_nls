import 'package:flutter/material.dart';

class ColoredContainer extends StatelessWidget {
  final Color color;
  const ColoredContainer(this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
