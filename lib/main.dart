import 'package:flutter/material.dart';

//my files
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var Questions = [
      'how many years experiance in flutter?',
      'are you familiar with IOS and Android?',
      'What are the projects you have been worked?',
      'What is your salary expectation',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Application'),
        ),
        body: Column(
          children: [
            Question(Questions[questionIndex]),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: answerQuestion,
              color: Colors.blue,
              textColor: Colors.white,
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: answerQuestion,
              color: Colors.blue,
              textColor: Colors.white,
            ),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: answerQuestion,
              color: Colors.blue,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
