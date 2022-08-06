import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String str;
  Questions(this.str);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(12.00),
      child: Text(str,
          style: TextStyle(fontSize: 23), textAlign: TextAlign.center),
    );
  }
}
