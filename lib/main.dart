import "package:flutter/material.dart";
import 'quizzs.dart';
import 'result.dart';

void main() => runApp(Test1());

class Test1 extends StatefulWidget {
  @override
  _Test1State createState() => _Test1State();
}

Color w = Colors.white;
Color b = Colors.black;

class _Test1State extends State<Test1> {
  int index = 0;
  int totlcore = 0;
  int num0 = 0;
  int num1 = 0;
  int num2 = 0;
  bool isSwitched = false;

  final List<Map<String, Object>> questions = [
    {
      'questionText': 'What\'s your favourite color',
      'answers': [
        {'text': 'blue', 'score': 10},
        {'text': 'black', 'score': 20},
        {'text': 'white', 'score': 30},
        {'text': 'green', 'score': 40},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal',
      'answers': [
        {'text': 'lion', 'score': 10},
        {'text': 'Tiger', 'score': 20},
        {'text': 'elephant', 'score': 30},
        {'text': 'Rabit', 'score': 40}
      ],
    },
    {
      'questionText': 'What\'s your favourite app',
      'answers': [
        {'text': 'Instagram', 'score': 10},
        {'text': 'Facebook', 'score': 20},
        {'text': 'Twitter', 'score': 30},
        {'text': 'ClubHouse', 'score': 40}
      ],
    },
  ];

  void restart() {
    setState(() {
      index = 0;
      totlcore = 0;
      num0 = 0;
      num1 = 0;
      num2 = 0;
    });
  }

  void turn(score) {
    setState(() {
      index == 0 ? num0 = score : num0 = num0;
      index == 1 ? num1 = score : num1 = num1;
      index == 2 ? num2 = score : num2 = num2;

      totlcore += score;
      index += 1;
    });
    print("Answer chosen!");
    print("num0 = $num0");
    print("num1 = $num1");
    print("num2 = $num2");
    print("index = $index");
    print("totalscore = $totlcore");
  }

  //////////////////////////
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //to hide the tape at the top right of the screen
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                  if (isSwitched == true) {
                    b = Colors.white;
                    w = Colors.black;
                  }
                  if (isSwitched == false) {
                    b = Colors.black;
                    w = Colors.white;
                  }
                });
              },
              inactiveThumbColor: b,
              inactiveTrackColor: b,
              activeColor: Colors.white,
            )
          ],
          title: Text(
            "Quiz",
            style: TextStyle(fontWeight: FontWeight.bold, color: w),
          ),
        ),
        body: Container(
          color: w,
          width: double.infinity,
          //margin: EdgeInsets.all(10.0),
          child: index < questions.length
              ? Quiz(questions, index, turn)
              : Result(restart, totlcore),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.arrow_back,
            color: w,
            size: 40,
          ),
          onPressed: () {
            if (index == 1) totlcore -= num0;
            if (index == 2) totlcore -= num1;
            if (index == 3) totlcore -= num2;
            setState(() {
              index > 0 ? index-- : index = index;
            });
            print("num0 = $num0");
            print("num1 = $num1");
            print("num2 = $num2");
            print("totalscore = $totlcore");
            print("index = $index");
          },
        ),
      ),
    );
  }
}
