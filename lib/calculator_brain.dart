import 'dart:math';

// calculate BMI: height * height / weight
class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obese';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'Increased risk of all sorts of disorders such as diabetes, heart disease and back pain. You should lose 5 to 10 kg.';
    } else if (_bmi >= 25) {
      return 'You don\'t really run a risk, but you can\'t get fatter.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower body weight. You should gain 5 to 10 kg.';
    }
  }

  String getRangeText() {
    if (_bmi >= 30) {
      return 'Obese BMI range:';
    } else if (_bmi >= 25) {
      return 'Overweight BMI range:';
    } else if (_bmi > 18.5) {
      return 'Normal BMI range:';
    } else {
      return 'Underweight BMI range:';
    }
  }

  String getRangeNumber() {
    if (_bmi >= 30) {
      return 'Above 30 kg/m2';
    } else if (_bmi >= 25) {
      return '25 - 30 kg/m2';
    } else if (_bmi > 18.5) {
      return '18.5 - 25 kg/m2';
    } else {
      return 'Below 18.5 kg/m2';
    }
  }
}
