import 'package:bmi_calc/calculator_brain.dart';
import 'package:bmi_calc/screens/input_screen.dart';
import 'package:bmi_calc/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({required this.bmiBrain});

  CalculatorBrain bmiBrain;

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
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiBrain.bmiResult(),
                    style: kresultTextStyle,
                  ),
                  Text(
                    bmiBrain.bmiResultText(),
                    style: kbmiTextStyle,
                  ),
                  Text(
                    bmiBrain.bmiDescription(),
                    style: kbodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            color: kbottomContainerColour,
            child: Center(
              child: Text(
                "CALCULATE",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          )
        ],
      ),
    );
  }
}
