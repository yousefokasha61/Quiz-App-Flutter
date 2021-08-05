import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);
  final int resultScore;
  final Function reloadHandler;

  Result(this.resultScore, this.reloadHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
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
          FlatButton(
            onPressed: () {
              reloadHandler();
            },
            child: Text('Reload Quiz!'),
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
