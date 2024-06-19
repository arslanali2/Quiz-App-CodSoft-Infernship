import 'package:flutter/material.dart';
import 'dart:async';

import 'package:quizapp/home_screen.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
              Container(
                child: Image.asset('student.jpg',height: 100,width: 100,),
              ),
            Container(
              alignment: Alignment.center,
              child: Text("Test Your Knowledge with \nChallenging Quizzes!", textAlign:TextAlign.center ,
                style: TextStyle(fontSize: 22, fontStyle: FontStyle.italic,color: Colors.black,
                    fontWeight: FontWeight.bold
                ),),
            ),
          ],


        ),
      ),
    );
  }
}