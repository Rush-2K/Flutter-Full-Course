import 'package:app_03_quiz/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:app_03_quiz/start_screen.dart';
import 'package:app_03_quiz/questions_screen.dart';
import 'package:app_03_quiz/data/questions.dart';
import 'package:app_03_quiz/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = StartScreen(switchScreen);
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers = []; //reset back to empty list
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    if(activeScreen == 'results-screen'){
      screenWidget = ResultsScreens(chosenAnswers: selectedAnswers,);
    }
    
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 62, 11, 150),
                Color.fromARGB(255, 106, 52, 201)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}