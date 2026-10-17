import 'package:flutter/material.dart';

class DiceImage extends StatelessWidget {
  const DiceImage(this.value, {super.key});

  final int value;

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/dice-$value.png', width: 200);
  }
}