// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:quizapp/main.dart';


class Result extends StatelessWidget {
  final Function() q;
  final int totalScore;
  Result(this.q, this.totalScore);

  String get resultPhrase {
    String resultText;
    if (totalScore > 70) {
      resultText = "Awesome";
    } else if (totalScore >= 40) {
      resultText = "good";
    } else {
      resultText = "bad";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            '$totalScore',
            style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color:  isSwitched == false ? Colors.black : Colors.white),
          ),
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color:  isSwitched == false ?Colors.black : Colors.white),
          ),
          ElevatedButton(onPressed: q, child: Text('restart the app')) 
        ],
      ),
    );
  }
}
