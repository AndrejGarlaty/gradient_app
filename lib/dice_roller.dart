import 'dart:math';

import 'package:flutter/material.dart';

import 'dice_image.dart';
import 'roll_button.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  final _random = Random();
  int _dice = 1;

  void _roll() {
    setState(() {
      _dice = _random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        DiceImage(_dice),
        RollButton(onPressed: _roll),
      ],
    );
  }
}