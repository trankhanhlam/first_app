import 'package:flutter/material.dart';
import 'dart:math';

class DiceRollter extends StatefulWidget {
  const DiceRollter({super.key});
  @override
  State<DiceRollter> createState() {
    return _DiceRollterState();
  }
}

class _DiceRollterState extends State<DiceRollter> {
  final randomizer = Random();
  var currentDice = 2;

  void rollDice() {
    setState(() {
      currentDice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDice.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
