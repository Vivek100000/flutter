import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function ptr;
  final String i;

  Answer(this.ptr, this.i);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10.00),
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue)),
            child: Text(i),
            onPressed: ptr));
  }
}
