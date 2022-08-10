import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './answer2.dart';
import './answer3.dart';
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
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Max', 'manchanda', 'ashish garg', 'dubey'],
    },
  ];

  void _answerfunction() {
    print('choice 1 is selected');
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  var questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Questions(questions[questionIndex]['questionText']),
          /*ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue)),
            child: Text(options.elementAt(0)),
            onPressed: () {
              print('choice 1 is selected');
              setState(() {
                questionIndex = questionIndex + 1;
              });
              print(questionIndex);
            },
          )*/
          //Answer(_answerfunction, 'Answer1'),
          /*ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 75, 183, 22))),
            child: Text(options.elementAt(1)),
            onPressed: () {
              print('choice  2 is selected');
              setState(() {
                questionIndex = questionIndex + 1;
              });
              print(questionIndex);
            },
          )*/
          //Answer2(_answerfunction, 'Answer2'),
          /*ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(226, 28, 187, 193))),
            child: Text(options.elementAt(2)),
            onPressed: () {
              print('choice 3 is selected');
              setState(() {
                questionIndex = questionIndex + 1;
              });
              print(questionIndex);
            }*/
          //Answer3(_answerfunction, 'Answer3'),
          ...(questions[questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerfunction, answer);
          }).toList()
        ]),
      ),
    );
  }
}
