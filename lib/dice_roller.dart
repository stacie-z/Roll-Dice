import 'package:flutter/material.dart';
import 'dart:math';

// We have made this global to avoid any rebuilding of this method object
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// This is a private state class
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    // setState updates the state of our app and redraws the widget
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // Allows us to make the column as small as possible so our dice is centered
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: rollDice,
          icon: Image.asset(
            // $ allows us to inject variables into strings
            'assets/images/dice-$currentDiceRoll.png',
          ),
          iconSize: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Click the die to roll',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        )
      ],
    );
  }
}
