import 'Constants.dart';

class CalciBrain{
  double _res=0.0;
  double _num1=0.0;

  double calculate(){
    _res=(kweight/(kheight*kheight))*10000;
    _num1 = double.parse((_res).toStringAsFixed(1));
    return _num1;
  }

  String type(){
    String value;
    _res=calculate();
    if(_res<16.0)
      value="UNDERWEIGHT";
    else if(_res>16.0 && _res<25.0)
      value="NORMAL";
    else
      value="OVERWEIGHT";
    return value;
  }

  String description(){
    String value;
    _res=calculate();
    if(_res<16.0)
      value="You are underweight , it's good if you eat bit more";
    else if(_res>16.0 && _res<25.0)
      value="Good Job! You are in the Normal range";
    else
      value="You are overweight,it's good if you exercise more";
    return value;
  }
}
