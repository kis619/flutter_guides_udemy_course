import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => {runApp(MyApp())};

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final questions = const ['How old are you?', 'What\'s your favourite color?'];
  var questionIndex = 0;
  void answerQuestion() {
    questionIndex += 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first amazing flutter app'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
                onPressed: answerQuestion, child: const Text('Answer 1')),
            ElevatedButton(
                onPressed: () => print("Answer two"),
                child: const Text('Answer 2')),
            ElevatedButton(
                onPressed: () {
                  print("Answer three");
                },
                child: const Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}
