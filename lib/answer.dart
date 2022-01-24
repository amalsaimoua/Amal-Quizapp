// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function() x;
  Answer(this.answerText,this.x);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        child: ElevatedButton( 
            onPressed: x,
            child: Text(
              answerText,
              style: TextStyle(fontSize: 20),
            )),
      ),
    );
  }
}
