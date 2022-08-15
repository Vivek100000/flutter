import 'package:flutter/cupertino.dart';
import './question.dart';
import './answer.dart';

class quiz extends StatelessWidget {
  final Function answerfunction;
  final List<Map<String, Object>> questions;
  final int questionindex;

  quiz(this.questions, this.questionindex, this.answerfunction);
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[questionindex]['questionText']),
        ...(questions[questionindex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerfunction(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
