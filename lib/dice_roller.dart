import "package:flutter/material.dart";
import "dart:math";

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentRollDice = 2;

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/dice-$currentRollDice.png",
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        FilledButton(
          onPressed: () {
            setState(() {
              currentRollDice = randomizer.nextInt(6) + 1;
            });
          },
          style: FilledButton.styleFrom(
              padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
              foregroundColor: const Color.fromARGB(255, 222, 244, 197),
              textStyle: const TextStyle(fontSize: 23)),
          child: const Text("Roll Dices"),
        )
      ],
    );
  }
}
