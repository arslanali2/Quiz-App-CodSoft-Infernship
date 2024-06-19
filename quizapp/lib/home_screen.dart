import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:quizapp/quiz_question_screen.dart';
import 'quiz_selection_screen.dart';
import 'quiz_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Quiz App',style:TextStyle(color: Colors.yellow,fontSize: 30,fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuizSelectionScreen()),
                  );
                },
                child: Text('Select Quiz',style: TextStyle(color: Colors.yellow),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Background color// Text color
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<QuizProvider>(context, listen: false).startRandomQuiz();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuizQuestionScreen()),
                  );
                },
                child: Text('Start Random Quiz',style:TextStyle(color: Colors.yellow) ,),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Background color// Text color
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
