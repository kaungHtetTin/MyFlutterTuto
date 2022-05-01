import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;
  final Function resetHandler;

  Result(this.totalScore,this.resetHandler);

  String get phaseByAnswer {
    String result;
    if (totalScore <= 10) {
      result = 'You are innocent';
    } else if (totalScore <= 16) {
      result = 'You are likeable';
    } else if (totalScore <= 20) {
      result = 'You are so strange';
    } else {
      result = 'You are so bad';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            phaseByAnswer,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
          ),
          FlatButton(onPressed: resetHandler, child: Text('Reset Quiz!'))
        ],
      ),
    );
  }
}
