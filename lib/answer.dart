import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {
          selectHandler();
        },
        child: Text(answerText),
        color: Colors.blue,
      ),
    );
  }
}
