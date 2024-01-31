import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 2;

  void rollDice() {
    var newDice = randomizer.nextInt(6) + 1;
    setState(() {
      currentDice = newDice;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/dice-$currentDice.png',
        width: 200,
      ),
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(foregroundColor: Colors.white),
        child: const Text("Roll Dice"),
      ),
    ]);
  }
}
