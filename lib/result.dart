import "package:flutter/material.dart";
import 'main.dart';

class Result extends StatelessWidget {
  final Function y;
  final int resultcore;

  Result(this.y, this.resultcore);

  String get resultPhrase {
    String resultText;
    if (resultcore >= 70) {
      resultText = "Awesome";
    } else if (resultcore >= 40) {
      resultText = "nice";
    } else {
      resultText = "not bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // al for abbreviation and type center to choose mainaxisaligment.center

        children: <Widget>[
          Text(
            "$resultPhrase!",
            style:
                TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: b),
            textAlign: TextAlign.center,
          ),
          Text(
            "Your score is $resultcore",
            style:
                TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: b),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              child: Text(
                "Restart the app",
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
              onPressed: y)
        ],
      ),
    );
  }
}
