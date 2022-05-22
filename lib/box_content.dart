import 'package:flutter/material.dart';

const TxtStyl=TextStyle(
  fontSize: 20.0,
  color: Color(0xFF8E8E99),
);

class BoxContent extends StatelessWidget {
  BoxContent(this.iicon,this.word,this.col);
  final IconData iicon;
  final String word;
  final Color col;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iicon,
          size:85.0,
          color: col,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(word,
            style: TxtStyl)
      ],
    );
  }
}