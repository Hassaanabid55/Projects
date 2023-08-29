import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(const DiceRoller());
}

class DiceRoller extends StatelessWidget {
  const DiceRoller({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dice Roller',
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 79, 34, 156), Color.fromARGB(255, 112, 19, 77)),
      ),
    );
  }
}
