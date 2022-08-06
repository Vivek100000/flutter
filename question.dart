import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String str;
  Questions(this.str);
  @override
  Widget build(BuildContext context) {
    return Text(str);
  }
}
