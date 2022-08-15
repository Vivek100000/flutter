import 'package:flutter/cupertino.dart';

class result extends StatelessWidget {
  final int total_score;
  result(this.total_score);
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
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
      ),
    );
  }
}
