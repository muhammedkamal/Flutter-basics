import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({this.weight,this.height});
  final int weight,height;
  double _bmi;

  String bmi()
  {
    _bmi = weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult()
  {
    _bmi = weight/pow(height/100,2);
    if (_bmi>=25.0)
      {
      return 'Over Weight';}
    else if (_bmi>18.5){
      return 'Normal';}
    else
     { return 'Under Weight';}
  }

  String getComment()
  {
    _bmi = weight/pow(height/100,2);
    if (_bmi>25.0)
      return 'You are Overweight, Just go and make some exercises';
    else if (_bmi>18.5)
      return 'Great, Just keep you routine';
    else
      return 'You have To eat healthy and do more exercies';
  }

}