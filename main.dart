import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Myappstate();
  }
}

class Myappstate extends State<MyApp> {
  var options = ['pig', 'cat', 'dog'];
  var questions = [
    'favourite animal?',
    'most loyal animal among them?',
    'thanks for the assesment'
  ];
  var questionIndex = 0;
  void func() {
    print('choice 3 is selected');
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Text(questions[questionIndex]),
          ElevatedButton(
            child: Text(options.elementAt(0)),
            onPressed: func,
          ),
          ElevatedButton(
            child: Text(options.elementAt(1)),
            onPressed: func,
          ),
          ElevatedButton(
            child: Text(options.elementAt(2)),
            onPressed: func,
          ),
        ]),
      ),
    );
  }
}
