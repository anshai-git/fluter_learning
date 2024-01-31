import 'package:basics_1/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:basics_1/styled_text.dart';

const start_alignment = Alignment.topLeft;
const end_alignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.gradient_from_color, this.gradient_to_color,
      {key})
      : super(key: key);

  final Color gradient_from_color;
  final Color gradient_to_color;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: start_alignment,
            end: end_alignment,
            colors: [gradient_from_color, gradient_to_color]),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
