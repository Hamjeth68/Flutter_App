import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuizHandler;

  Result(this.resultScore, this.resetQuizHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 20) {
      resultText = "you are awsome";
    } else if (resultScore <= 25) {
      resultText = 'Pretty likeable';
    } else if (resultScore <= 40) {
      resultText = 'you are ..... strange!';
    } else {
      resultText = 'you are bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.blue)),
            child: Text('Restart Quiz'),
            onPressed: resetQuizHandler,
          ),
        ],
      ),
    );
  }
}
