import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuizHandler;

  Result(this.resultScore, this.resetQuizHandler);

  String get resultPhrase {
    var resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome!';
    } else if (resultScore <= 12) {
      resultText = 'You\'re pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are .... strange.';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(onPressed: resetQuizHandler, child: const Text('Restart Quiz'),), //elevated button automatically picks up theme color
          const SizedBox(height: 20), //add space between buttons
          FloatingActionButton(onPressed: ()=> {}, foregroundColor: Colors.black, backgroundColor: Colors.orange, hoverColor: Colors.deepOrange, child: Text('hi'),),
          const SizedBox(height: 20),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                shadowColor: MaterialStateProperty.all(Colors.deepPurple),
              ),
              onPressed: ()=> {}, child: Text('ElevatedButton with styles'),),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.white70),
            onPressed: ()=> {}, child: Text('ElevatedButton2 with styles'),),
          const SizedBox(height: 20),
          TextButton(style: TextButton.styleFrom(foregroundColor: Colors.red), onPressed: ()=> {}, child: Text('FlatButton'),),
          const SizedBox(height: 20),
          OutlinedButton(style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.teal, width: 2), textStyle: TextStyle(fontWeight: FontWeight.bold), foregroundColor: Colors.teal,), onPressed: ()=> {}, child: Text('OutlinedButton'),),
        ],
      ),
    );
  }
}
