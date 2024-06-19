import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quiz_provider.dart';
import 'package:provider/provider.dart';
import 'result_screen.dart';

class QuizQuestionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final quizProvider = Provider.of<QuizProvider>(context);
    final currentQuestion = quizProvider.currentQuestion;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Text('Quiz',style: (TextStyle(fontWeight: FontWeight.bold,fontSize:30)),),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              currentQuestion.question,
              style: TextStyle(fontSize: 18),
            ),
            ...currentQuestion.options.map((option) => RadioListTile(
              title: Text(option),
              value: option,
              groupValue: quizProvider.selectedAnswer,
              onChanged: (value) {
                quizProvider.selectAnswer(value!);
              },
            )),
            ElevatedButton(
              onPressed: () {
                if (quizProvider.submitAnswer()) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => ResultScreen()),
                  );
                } else {
                  // Move to the next question
                  quizProvider.nextQuestion();
                }
              },
              child: Text('Submit',style: TextStyle(color: Colors.yellow),),
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Background color// Text color
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
    ),
            ),
            ),],
        ),
      ),
    );
  }
}
