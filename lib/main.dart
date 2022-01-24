// ignore_for_file: prefer_const_constructors, prefer_final_fields, avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';
import 'package:quizapp/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

bool isSwitched = false;

class _MyAppState extends State<MyApp> {
  int _totalScore = 0;
  int _questionIndex = 0;
  void resetApp() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      _questionIndex += 1;
    });
    print(_totalScore);
  }

  List<Map<String, Object>> _question = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'Text': 'black', 'score': 10},
        {'Text': 'white', 'score': 20},
        {'Text': 'pink', 'score': 30},
        {'Text': 'blue', 'score': 40}
      ]
    },
    {
      'questionText': 'What\'s your favorite country?',
      'answers': [
        {'Text': 'syr', 'score': 10},
        {'Text': 'uae', 'score': 20},
        {'Text': 'usa', 'score': 30},
        {'Text': 'la', 'score': 40}
      ]
    },
    {
      'questionText': 'What\'s your favorite amal?',
      'answers': [
        {'Text': '1', 'score': 10},
        {'Text': '2', 'score': 20},
        {'Text': '3', 'score': 30},
        {'Text': '4', 'score': 40}
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App',style: TextStyle(color:  isSwitched == false ? Colors.white : Colors.black54),),
            actions: [
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                    isSwitched == false ? Colors.white : Colors.black54;
                
                  });
                },
              )
            ],
          ),
          body: Container(
              color: isSwitched == false ? Colors.white : Colors.black,
              child: _questionIndex < _question.length
                  ? Quiz(_question, answerQuestion, _questionIndex)
                  : Result(resetApp, _totalScore)),
        ));
  }
}
