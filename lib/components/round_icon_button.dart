import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed});
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Icon(icon),
        style: ElevatedButton.styleFrom(
          primary: Color(0xFF4C4F5E),
          shape: CircleBorder(),
          padding: EdgeInsets.all(24),
        ),
      ),
    );
  }
}
