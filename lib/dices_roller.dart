import 'package:flutter/material.dart';
import 'dart:math';
final randomizer = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentnumber = 2;
  void rolldice() {
    //
    setState(() {
      currentnumber = randomizer.nextInt(6) + 1;
      print("Rolled");
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset('assets/images/dice-$currentnumber.png', width: 200),
      const SizedBox(height: 20),
      TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
            // padding: const EdgeInsets.only(top: 20)
          ),
          child: const Text('Roll Dice'))
    ]);
  }
}
