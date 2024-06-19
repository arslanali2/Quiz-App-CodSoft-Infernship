import 'package:flutter/material.dart';

class Question {
  final String question;
  final List<String> options;
  final String correctAnswer;
  String? selectedAnswer;

  Question({required this.question, required this.options, required this.correctAnswer});
}

class Quiz {
  final String title;
  final List<Question> questions;

  Quiz({required this.title, required this.questions});
}

class QuizProvider with ChangeNotifier {
  List<Quiz> quizzes = [
    Quiz(
      title: 'Computer Quiz',
      questions: [
        Question(question: '1. what is the smallest unit of data in a computer ?', options: ['Gigabyte ', 'Bit', 'Byte','TeraByte'], correctAnswer: 'Bit'),
        Question(question: '2.	Which of the following is NOT an anti-virus software ?', options: ['Linux', 'Avast', 'Norton','Kaspersky'], correctAnswer: 'Linux'),
        Question(question: '3.	Which unit of the computer is considered as the brain of the computer ?', options: ['OutPut Unit', 'CPU', 'Input Unit','Memory Unit'], correctAnswer: 'CPU'),
        Question(question: '4.	In the context of computing, what is the full form of URL ?', options: ['Undistributed Resource Locator','Unified Resource Locator','Uniform Resource Locator','Uniform Region Locator '], correctAnswer: 'Uniform Resource Locator'),
        Question(question: '5.  In the context of computing, a byte is equal to _____ bits ?', options: ['2', '4', '8','16'], correctAnswer: '8'),
        Question(question: '6.	Which of the following is NOT an Operating System ?', options: ['Linux', 'Avast', 'MAC OS','Windows'], correctAnswer: 'Avast'),



      ],
    ),
    Quiz(
      title: 'Math Quiz',
      questions: [
        Question(question: '1:  What is 2+2?', options: ['3', '4', '5'], correctAnswer: '4'),
        Question(question: '2:  What is square root of 49?', options: ['7', '3', '5','9'], correctAnswer: '7'),
        Question(question: '3:  What is 13+153?', options: ['150', '177', '166'], correctAnswer: '166'),
        Question(question: '4:  If we minus 712 from 1500, how much do we get?', options: ['513', '788', '768','646'], correctAnswer: '788'),
        Question(question: '5:  50 times of 8 is equal to:', options: ['500', '400', '450','600'], correctAnswer: '400'),
        Question(question: '6:  110 divided by 10 is:', options: ['11', '20', '9','10'], correctAnswer: '11'),
        Question(question: '7:  What is 53-18?', options: ['35', '30', '25'], correctAnswer: '35'),
        Question(question: '8:  What is half of 550?', options: ['275', '250', '225','240'], correctAnswer: '275'),
        Question(question: '9:  30 times of 8 is equal to:', options: ['240', '200', '250','180'], correctAnswer: '240'),
        Question(question: '10:  20+(90÷2) is equal to:', options: ['60', '45', '65','55'], correctAnswer: '65'),
      ],
    ),
    Quiz(
      title: 'Science Quiz',
      questions: [
        Question(question: '1:  What is H2O?', options: ['Water', 'Oxygen', 'Hydrogen'], correctAnswer: 'Water'),
        Question(question: '2:  Who demonstrated that objects of different masses would reach the ground together when dropped from the same height ?', options: ['Isaac Newton', 'Robert Boyle', 'Albert Einstein','Galileo Galilei '], correctAnswer: 'Galileo Galilei '),
        Question(question: '3:  What is CO2?', options: ['Carbon Dioxide', 'Oxygen', 'Carbon Monoxide'], correctAnswer: 'Carbon Dioxide'),
        Question(question: '4:  A body at rest can have ?', options: ['Speed', 'Momentum', 'Velocity','Energy'], correctAnswer: 'Velocity'),
        Question(question: '5:  Which of the following, can neither be created nor be destroyed ?', options: ['Force', 'Energy', 'Power','Momentum'], correctAnswer: 'Energy'),
        Question(question: '6:  Who demonstrated that objects of different masses would reach the ground together when dropped from the same height ?', options: ['Isaac Newton', 'Robert Boyle', 'Albert Einstein','Galileo Galilei '], correctAnswer: 'Galileo Galilei '),
        Question(question: '7:  Modern periodic table is based on .......... ?', options: ['Atomic Number', 'Number of Neutrons', 'Number of Protons','Atomic Mass Number'], correctAnswer: 'Atomic Number'),
        Question(question: '8:  Mass / Volume = .............. ?', options: ['Area', 'Density', 'Pressure','Force'], correctAnswer: 'Density'),
        Question(question: '9:  The pH of pure water is ?', options: ['2', '7', '5','1'], correctAnswer: '7'),
        Question(question: '10: The force of attraction between two objects is called the ?', options: ['Centripetal Force', 'Centrifugal Force', 'Gravitational Force','Electromagnetic Force'], correctAnswer: 'Gravitational Force'),

  ],
    ),
    Quiz(
      title: 'History Quiz',
      questions: [
        Question(question: '1:  In which year did World War I begin?', options: ['1934', '1923', '1910','1914'], correctAnswer: '1914'),
        Question(question: '2:  In which country was Adolf Hitler born?', options: ['England', 'France', 'Austria','Germany'], correctAnswer: 'Austria'),
        Question(question: '3:  Who was the first Western explorer to reach China?', options: ['Marco Polo', 'Columbus', 'Cook','Magellan'], correctAnswer: 'Marco Polo'),
        Question(question: '4:  When did Neil Armstrong land on the moon?', options: ['July 4, 1969', 'May 11, 1960', 'June 22, 1969','July 21, 1959'], correctAnswer: 'July 21, 1959'),
        Question(question: '5:  In which year did Albert Einstein get the Nobel Prize?', options: ['1933', '1922', '1924','1930'], correctAnswer: '1922'),
        Question(question: '6:  In which decade did American involvement in the Korean War take place?', options: ['1950s', '1960s', '1970s','1940s'], correctAnswer: '1950s'),
        Question(question: '7:  Where was John F. Kennedy assassinated?', options: ['Dallas', 'New York', 'Las Vegas','Washington DC'], correctAnswer: 'Dallas'),
        Question(question: '8:  Which is the biggest Continent in the World Population wise ?', options: ['Asia', 'Australia', 'Europe','Africa'], correctAnswer: 'Asia'),
        Question(question: '9:  Paris is capital city of ______?', options: ['France', 'Germany', 'Russia','Belgium'], correctAnswer: 'France'),
        Question(question: '10:  Sahara Desert is located in which continent ?', options: ['Asia', 'Australia', 'Europe','Africa'], correctAnswer: 'Africa'),

      ],
    ),
    Quiz(
      title: 'Cricket Quiz',
      questions: [
        Question(question: '1:  Which team won first ICC Cricket World Cup ?', options: ['West Indies', 'Australia', 'England','India'], correctAnswer: 'West Indies'),
        Question(question: '2:  Which Captain has won most number of ICC Trophies ?', options: ['MS Dhoni', 'Ricky Ponting', 'Eoin Morgan','Steve Waugh'], correctAnswer: 'Ricky Ponting'),
        Question(question: '3:  Which country has won maximum number of ICC ODI World Cups?', options: ['Australia', 'Pakistan', 'India','England'], correctAnswer: 'Australia'),
        Question(question: '4:  Who was Player of the Tournament in 2019 ICC Cricket World Cup?', options: ['Kane Williamson', 'David Warner','Babar Azam', 'Virat Kohli'], correctAnswer: 'Kane Williamson'),
        Question(question: '5:  Which player is not part of Famous Fab Four in Cricket?', options: ['Virat Kohli', 'Steve Smith', 'Joe Root','Babar Azam'], correctAnswer: 'Babar Azam'),
        Question(question: '6:  Which cricketer is known as Mr Cricket ?', options: ['Mike Hussey', 'MS Dhoni', 'Shane Warne','Virat Kohli'], correctAnswer: 'Mike Hussey'),
        Question(question: '7:  Who holds record for fastest century in ODIs ?', options: ['AB Devillers', 'Shahid Afridi', 'MS Dhoni','Chris Gayle'], correctAnswer: 'AB Devillers'),
        Question(question: '8:  Who was Man of the Match in ICC 2003 World Cup Final?', options: ['Adam Gilchrist', 'Ricky Ponting', 'Sachin Tendulkar','Zaheer Khan'], correctAnswer: 'Ricky Ponting'),
        Question(question: '9:  Which Batsman holds record for most runs in International Cricket ?', options: ['Brain Lara', 'Ricky Ponting', 'Sachin Tendulkar','Ms Dhoni'], correctAnswer: 'Sachin Tendulkar'),
        Question(question: '10:  Who was captain of Australia in 2023 ICC World Cup ?', options: ['Steve Smith', 'Pat Cummins', 'David Warner','Travis Head'], correctAnswer: 'Pat Cummins'),

      ],
    ),
  ];

  int _currentQuizIndex = 0;
  int _currentQuestionIndex = 0;
  int _score = 0;

  Quiz get currentQuiz => quizzes[_currentQuizIndex];
  Question get currentQuestion => currentQuiz.questions[_currentQuestionIndex];
  int get score => _score;
  List<Question> get questions => currentQuiz.questions;
  String? selectedAnswer;

  void startQuiz(int index) {
    _currentQuizIndex = index;
    _currentQuestionIndex = 0;
    _score = 0;
    notifyListeners();
  }

  void startRandomQuiz() {
    _currentQuizIndex = (quizzes.length * (1 + DateTime.now().millisecondsSinceEpoch) % quizzes.length).toInt();
    _currentQuestionIndex = 0;
    _score = 0;
    notifyListeners();
  }

  void selectAnswer(String answer) {
    selectedAnswer = answer;
    notifyListeners();
  }

  bool submitAnswer() {
    if (selectedAnswer == currentQuestion.correctAnswer) {
      _score++;
    }
    currentQuestion.selectedAnswer = selectedAnswer;
    selectedAnswer = null;
    if (_currentQuestionIndex == currentQuiz.questions.length - 1) {
      return true; // Quiz finished
    } else {
      _currentQuestionIndex++;
      notifyListeners();
      return false; // More questions remaining
    }
  }

  void nextQuestion() {
    if (_currentQuestionIndex == currentQuiz.questions.length ) {
      _currentQuestionIndex++;
    }
    else{
      notifyListeners();
    }
  }
}
