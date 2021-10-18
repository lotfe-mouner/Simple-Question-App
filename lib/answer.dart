import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final String questionanswers;
  final Function turn;

  Answer(this.turn, this.questionanswers);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          // hoverColor: Colors.amber,  thought of using it but i don't know what it does
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(
            questionanswers,
            style: TextStyle(fontSize: 35),
          ),
          onPressed: turn),
    );
  }
}
