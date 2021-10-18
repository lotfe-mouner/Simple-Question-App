import "package:flutter/material.dart";
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int index;
  final Function turn;

  Quiz(this.questions, this.index, this.turn);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[index]['questionText']),
        ...(questions[index]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => turn(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
