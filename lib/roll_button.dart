import 'package:flutter/material.dart';

import 'styled_text.dart';

class RollButton extends StatelessWidget {
  const RollButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      child: const StyledText('Roll Dice'),
    );
  }
}