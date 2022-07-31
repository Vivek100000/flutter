import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Text('the question is'),
          RaisedButton(
            child: Text('answer1'),
            onPressed: null,
          ),
          RaisedButton(
            child: Text('answer2'),
            onPressed: null,
          ),
          RaisedButton(
            child: Text('answer3'),
            onPressed: null,
          ),
        ]),
      ),
    );
  }
}
