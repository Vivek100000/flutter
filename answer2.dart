import 'package:flutter/material.dart';

class Answer2 extends StatelessWidget {
  final Function ptr;
  final String i;

  Answer2(this.ptr, this.i);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10.00),
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 25, 183, 175))),
            child: Text(i),
            onPressed: ptr));
  }
}
