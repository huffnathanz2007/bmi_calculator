import 'dart:math';
class CalculatorBrain {
  CalculatorBrain({required this.weight, required this.height});

   final int height;
   final  int weight;

  late double _bmi;

   String calculateBMI() {
     _bmi = weight / pow(height / 100, 2);
     return _bmi.toStringAsFixed(1);
   }

   String getResults() {
     if(_bmi >= 25) {
       return 'Overweight';
     }
     else if (_bmi > 18.5 ){
       return 'Normal';
     }
     else {
       return 'Underweight';
     }
   }
   String getInterpretation (){
     if(_bmi >= 25) {
       return 'Higher than average body weight for your height';
     }
     else if (_bmi > 18.5 ){
       return 'Good Job, your body weight is normal';
     }
     else {
       return 'Your body weight is lower than average for your height';
     }

   }
}