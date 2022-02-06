import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent(this.cardTitle,this.cardIcon);
  final String cardTitle;
  final IconData cardIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(cardIcon,size: 80.0,),
        SizedBox(height: 15.0,),
        Text(cardTitle,style: klabelTextStyle)
      ],
    );
  }
}