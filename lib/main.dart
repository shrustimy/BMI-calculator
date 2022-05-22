import 'package:flutter/material.dart';
import 'input_page.dart';
void main() {
  runApp(Bmi());
}

class Bmi extends StatelessWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
            primary: Color(0xFF090C22)
        ),
        scaffoldBackgroundColor: Color(0xFF090C22),
      ),
      home: BMI_calci(),
    );
  }
}




