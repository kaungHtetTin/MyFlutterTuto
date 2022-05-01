import 'package:flutter/material.dart';
import 'package:my_flutter_app/result.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'What \' your favorite color?',
      'answers': [
        {'text':'red','score':10},
        {'text':'green','score':7},
        {'text':'blue','score':5},
        {'text':'white','score':3}
      ]
    },
    {
      'questionText': 'What \'  your favourite animal',
      'answers': [
        {'text':'dog','score':10},
        {'text':'cat','score':8},
        {'text':'mouse','score':4}
      ]
    },
    {
      'questionText': 'What \'  your favourite food',
      'answers': [
        {'text':'apple','score':10},
        {'text':'orange','score':7},
        {'text':'coconut','score':4},
        {'text':'lemon','score':1}

      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore=0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore=0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore+=score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions,_answerQuestion,_questionIndex)
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
