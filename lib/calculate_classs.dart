import 'dart:math';
class CalculateBrain {
  CalculateBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  late double _bmi;
  String calculateBmI(){
    _bmi = weight / pow(height/100, 2);
   return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi >= 20){
      return 'overwight';
    } else if(_bmi>25){
      return 'normal';
    } else {
      return 'underwight';
    }
  }
  String getInterpretation(){
    if(_bmi >= 20){
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if(_bmi>25){
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}