import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 30) {
      resultText = "you are awsome";
    } else if (resultScore <= 35) {
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
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
