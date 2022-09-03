import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int total_score;
  final Function resetQuiz;
  result(this.total_score, this.resetQuiz);
  String get resultPhrase {
    var resultText = 'you did it';
    if (total_score > 20) {
      resultText = 'good work your score is: $total_score';
    } else if (total_score > 40) {
      resultText = 'excellent work your score is: $total_score';
    } else {
      resultText = 'need improvement your score is: $total_score';
    }
    return resultText;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
          ),
          ElevatedButton(
              onPressed: resetQuiz,
              child: Text('restart quiz!'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                  foregroundColor: MaterialStateProperty.all(
                      Color.fromARGB(222, 23, 236, 8))))
        ],
      ), //
    );
  }
}
