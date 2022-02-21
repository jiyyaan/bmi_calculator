import 'dart:math';

class BMIBrain{

  BMIBrain({ this.bodyWeight, this.bodyHeight});
 final int bodyWeight;
 final int bodyHeight;

 double _bmi=0;

  String calculateBMI(){
    _bmi = bodyWeight / pow(bodyHeight/100, 2);
    return _bmi.toStringAsFixed(1);
  }

 String categoryWise(){
   if(_bmi >= 25){
     return 'Overweight';
   }else if(_bmi>18.5){
     return 'Normal';
   }else{
     return 'Underweight';
   }
 }

  String interpretation(){
    if(_bmi >= 25){
      return 'You have higher than body normal body weight. Try to exercise more.';
    }else if(_bmi>18.5){
      return 'You have normal body weight. Good Job!';
    }else{
      return 'You have lower than a body weight. You can eat more.';
    }
  }


}

