import 'dart:math';

class BmiBrain{

  final int? height;
  final int? weight;
  double? _bmi;

  BmiBrain({this.height,this.weight}){
    _bmi = weight!/pow(height!/100, 2);
  }

  String getBmi(){
    return _bmi!.toStringAsFixed(1);
  }

  String getResult(){
    if (_bmi!>=25){
      return "OVERWEIGHT";
    }
    else if (_bmi!<18){
      return "UNDERWEIGHT";
    }
    else{
      return "NORMAL";
    }
  }

  String getInterpretation(){
    if (_bmi!>=25){
      return "Your body weight is more than normal. Try Excercising more!";
    }
    else if (_bmi!<7){
      return "Your body weight is less than normal. Try Eating More!";
    }
    else{
      return "Your body weight is normal. Congratulations!";
    }
  }
}