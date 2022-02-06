import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 120;
  int weight = 40;
  int age = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: selectedGender == Gender.male
                        ? kactiveCardColour
                        : kinactiveCardColour,
                    cardChild: IconContent("MALE", FontAwesomeIcons.mars),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      colour: selectedGender == Gender.female
                          ? kactiveCardColour
                          : kinactiveCardColour,
                      cardChild: IconContent("FEMALE", FontAwesomeIcons.venus),
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      }),
                ),
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "HEIGHT",
                  style: klabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: knumberTextStyle,
                    ),
                    Text(
                      "cm",
                      style: klabelTextStyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    inactiveTrackColor: Color(0xFF8D8E98),
                    activeTrackColor: Colors.white,
                    thumbColor: Color(0xFFEB1555),
                    overlayColor: Color(0x29EB1555),
                    thumbShape: RoundSliderThumbShape(disabledThumbRadius: 25,enabledThumbRadius: 15),
                    trackHeight: 2
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    onChanged: (value) {
                      setState(() {
                        height = value.toInt();
                      });
                    },
                    min: 100,
                    max: 200,
                  ),
                )
              ],
            ),
            onPress: () {},
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("WEIGHT",style: klabelTextStyle,),
                        Text(weight.toString(),style: knumberTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(icon: FontAwesomeIcons.minus, onPressed: (){
                              setState(() {
                                weight--;
                              });
                            },),
                            SizedBox(width: 10,),
                            RoundIconButton(icon: FontAwesomeIcons.plus, onPressed: (){
                              setState(() {
                                weight++;
                              });
                            },)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("AGE",style: klabelTextStyle,),
                        Text(age.toString(),style: knumberTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(icon: FontAwesomeIcons.minus, onPressed: (){
                              setState(() {
                                age--;
                              });
                            },),
                            SizedBox(width: 10,),
                            RoundIconButton(icon: FontAwesomeIcons.plus, onPressed: (){
                              setState(() {
                                age++;
                              });
                            },)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(title:"CALCULATE",onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              BmiBrain bb = BmiBrain(height: height, weight: weight);
              return ResultsPage(bmiBrain: bb);
            }));
          })
        ],
      ),
    );
  }
}



