import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerselect() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "what's your name",
      "what's your favourite animal",
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz App"),
          ),
          body: Column(
            children: [
              Questions(questions[questionIndex]),
              ElevatedButton(
                child: Text("Answer 1"),
                onPressed: answerselect,
              ),
              ElevatedButton(
                child: Text("Answer 2"),
                onPressed: answerselect,
              ),
              ElevatedButton(
                child: Text("Answer 3"),
                onPressed: answerselect,
              ),
            ],
          )),
    );
  }
}
