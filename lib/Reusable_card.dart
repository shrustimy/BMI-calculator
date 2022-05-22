import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(@required this.colour,this.iconw);

  final Color colour;
  final Widget iconw;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: iconw,
      margin: EdgeInsets.all(15),
      decoration:BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}