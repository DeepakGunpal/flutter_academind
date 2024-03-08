import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

// const vs final
// const - compile time constant
// final - runtime constant

const startAlignment = Alignment.topLeft; // compile time constant
// final startAlignment = getAlignment(); // runtime constant
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  // multiple constructor function
  const GradientContainer.defaultGradient({super.key})
      : colors = const [
          Color.fromARGB(202, 5, 30, 84),
          Color.fromARGB(231, 12, 27, 105)
        ];

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        // child: StyledText("Namaste World"),
        child: DiceRoller(),
      ),
    );
  }
}
