import 'package:basic/result.dart';
import 'package:flutter/material.dart';

//my files
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//mystate class
class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 50},
        {'text': 'Red', 'score': 13},
        {'text': 'Green', 'score': 15},
        {'text': 'White', 'score': 5}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabit', 'score': 11},
        {'text': 'Cat', 'score': 14},
        {'text': 'Dog', 'score': 32},
        {'text': 'Bird', 'score': 18}
      ],
    },
    {
      'questionText': 'What\'s your favorite Country?',
      'answers': [
        {'text': 'German', 'score': 50},
        {'text': 'italy', 'score': 45},
        {'text': 'France', 'score': 15},
        {'text': 'London', 'score': 13}
      ],
    },
  ];
  var questionIndex = 0;
  var _totalScore = 0;

  void answerQuestion(int score) {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Application'),
        ),
        body: questionIndex < _questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
