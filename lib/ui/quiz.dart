import 'package:flutter/material.dart';
import 'package:quiz_application/data/data.dart';
// import 'package:quiz_application/models/model_data.dart';
import 'package:quiz_application/ui/question_screen.dart';
import 'package:quiz_application/ui/result_screen.dart';
import 'package:quiz_application/ui/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> _selectedAnswer = [];
  var _activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      _activeScreen = "question-screen";
    });
  }

  void _chooseAnswered(String Answred) {
    _selectedAnswer.add(Answred);

    if (_selectedAnswer.length == question.length) {
      setState(() {
        _activeScreen = "result-screen";
      });
    }
  }

  void restartQuiz() {
    setState(() {
      _selectedAnswer.clear();
      _activeScreen = "question-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(onTap: switchScreen);

    if (_activeScreen == "question-screen") {
      screenWidget = QuestionScreen(chooseAnswered: _chooseAnswered);
    }

    if (_activeScreen == "result-screen") {
      screenWidget = ResultScreen(
        restartQuiz: restartQuiz,
        answeredResult: _selectedAnswer,
      );
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF141E30), Color(0xFF243B55)],
          ),
        ),
        child: screenWidget,
      ),
    );
  }
}
