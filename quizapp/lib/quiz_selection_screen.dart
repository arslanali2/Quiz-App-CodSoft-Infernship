import 'package:flutter/material.dart';
import 'quiz_question_screen.dart';
import 'quiz_provider.dart';
import 'package:provider/provider.dart';

class QuizSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final quizzes = Provider.of<QuizProvider>(context).quizzes;

    return Scaffold(
      // backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Select a Quiz',style: (TextStyle(fontWeight: FontWeight.bold,fontSize:30))),
      ),
      body: ListView.builder(
        itemCount: quizzes.length,
        itemBuilder: (context, index) {
          return ListTile(
            selectedTileColor: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.horizontal(),
              side: BorderSide(color: Colors.yellow, width: 2,style: BorderStyle.solid),
            ),

            tileColor: Colors.black,
            title: Text(quizzes[index].title,style: TextStyle(fontSize: 20,color: Colors.yellow),),
            onTap: () {
              Provider.of<QuizProvider>(context, listen: false).startQuiz(index);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizQuestionScreen()),
              );
            },
          );
        },
      ),
    );
  }
}
