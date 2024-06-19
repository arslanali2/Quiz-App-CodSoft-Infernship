import 'package:flutter/material.dart';
import 'quiz_provider.dart';
import 'package:provider/provider.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final quizProvider = Provider.of<QuizProvider>(context);
    final score = quizProvider.score;
    final questions = quizProvider.questions;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Result',style: (TextStyle(fontWeight: FontWeight.bold,fontSize:30))),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Your score is $score/${questions.length}',
              style: TextStyle(fontSize: 24),
            ),
            ...questions.map((question) => ListTile(
              title: Text(question.question),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...question.options.map((option) => Text(
                    option,
                    style: TextStyle(
                        color: option == question.correctAnswer
                            ? Colors.green
                            : option == question.selectedAnswer
                            ? Colors.red
                            : Colors.black),
                  )),
                ],
              ),
            )),
            ElevatedButton(

              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go to Home',style: TextStyle(fontSize: 20,color: Colors.black),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
