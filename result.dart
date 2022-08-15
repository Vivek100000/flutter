import 'package:flutter/cupertino.dart';

class result extends StatelessWidget {
  final int total_score;
  result(this.total_score);
  Widget build(BuildContext context) {
    return Center(
      child: Text('assesment complete total score: $total_score'),
    );
  }
}
