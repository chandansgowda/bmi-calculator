import 'package:bmi_calculator/screens/input_page.dart';
import "package:flutter/material.dart";

void main() => runApp(BmiApp());

class BmiApp extends StatelessWidget {
  const BmiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      title: "BMI Calcualator",
      theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(
            color: Color(0xFF0A0E21),
          ),
          primaryColor: Color(0xFF0A0E21), scaffoldBackgroundColor: Color(0xFF0F0F1E)),
    );
  }
}



