import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  final int score;

  Answer(this.selectHandler, this.answerText, this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10), //space btwn buttons
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(answerText),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          padding: EdgeInsets.all(20), //space btwn button edge and button text
        ),
      ),
    );
  }
}