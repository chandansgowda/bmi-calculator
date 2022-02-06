import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.title, required this.onTap});
  String title;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        height: kbottomContainerHeight,
        width: double.infinity,
        color: kbottomContainerColour,
        child: Center(child: Text(title,style: klargeButtonTextStyle,)),
      ),
    );
  }
}