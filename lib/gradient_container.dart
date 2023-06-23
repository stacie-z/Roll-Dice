import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

// Styling
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // Constructor - you can have multiple constructors
  // super() calls the StatelessWidget and forwards the key argument
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  void rollDice() {}

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
