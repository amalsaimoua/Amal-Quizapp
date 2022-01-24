// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quizapp/main.dart';

class Question extends StatelessWidget {
 var questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 30,color:  isSwitched == false ? Colors.black : Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
