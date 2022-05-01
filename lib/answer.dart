import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final VoidCallback selectedHandler;
  String answerText;
  Answer(this.selectedHandler,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText),
        onPressed: selectedHandler,
      ),
    );
  }
}
