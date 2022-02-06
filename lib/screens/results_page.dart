import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({required this.bmiBrain});

  BmiBrain bmiBrain;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            child: Center(
                child: Text(
              "Your Result",
              style: ktitleTextStyle,
            )),
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              onPress: () {},
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiBrain.getResult(),
                    style: kresultTextStyle,
                  ),
                  Text(
                    bmiBrain.getBmi(),
                    style: kbmiTextStyle,
                  ),
                  Text(
                    bmiBrain.getInterpretation(),
                    style: kbodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(title: "RECALCULATE", onTap: (){
            Navigator.pop(context);
          })
        ],
      ),
    );
  }
}
