import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var options = ['pig', 'cat', 'dog'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Text('what is your favourite animal'),
          ElevatedButton(
            child: Text(options.elementAt(0)),
            onPressed: () => print('choice 1 is selected'),
          ),
          ElevatedButton(
            child: Text(options.elementAt(1)),
            onPressed: () => print('choice 2 is selected'),
          ),
          ElevatedButton(
            child: Text(options.elementAt(2)),
            onPressed: () => print('choice 3 is selected'),
          ),
        ]),
      ),
    );
  }
}
