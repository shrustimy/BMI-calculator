import 'package:bmi_calculator/Calculator_Brain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Constants.dart';
import 'Calculator_Brain.dart';

// double res=0.0;
// double num1=0.0;
//
// double calculate(){
// res=(kweight/(kheight*kheight))*10000;
// num1 = double.parse((res).toStringAsFixed(1));
// return num1;
// }
//
// String type(){
//   String value;
//   res=calculate();
//   if(res<16.0)
//     value="UNDERWEIGHT";
//   else if(res>16.0 && res<25.0)
//     value="NORMAL";
//   else
//     value="OVERWEIGHT";
// return value;
// }
//
// String description(){
//   String value;
//   res=calculate();
//   if(res<16.0)
//     value="You are underweight , it's good if you eat bit more";
//   else if(res>16.0 && res<25.0)
//     value="Good Job! You are in the Normal range";
//   else
//     value="You are overweight,it's good if you exercise more";
//   return value;
// }

CalciBrain calc=CalciBrain();


class Results extends StatelessWidget {
  const Results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top:25.0),
            child: Text('Your Result',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 50,
                color: Color(0xFFFFFFFF)),
            ),
          ),
          Expanded(
            flex: 5,
             child: Container(
               margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Color(0xFF1D1F33),
                  borderRadius: BorderRadius.circular(10.0),
              ),
              child:Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(calc.type(),
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.green,
                    ),
                  ),
                  Text(calc.calculate().toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 100.0,
                        fontWeight: FontWeight.w900,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    child: Text(calc.description(),
                    style: TextStyle(
                        color: Colors.white,
                      fontSize: 25.0,
                    )
                    ),
                  )
                ],
              )
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFEA1556),
                ),
                width: double.infinity,
                margin: EdgeInsets.only(top: 30.0),
                child: Center(
                  child: Text(
                    'RE-CALCULATE YOUR BMI',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
