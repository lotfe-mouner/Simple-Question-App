import "package:flutter/material.dart";
import 'main.dart';

class Question extends StatelessWidget {
  final questionsText;

  Question(this.questionsText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(
        questionsText,
        style: TextStyle(fontSize: 30, color: b, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
