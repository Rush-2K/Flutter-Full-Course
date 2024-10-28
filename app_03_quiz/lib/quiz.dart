import 'package:flutter/material.dart';
import 'package:app_03_quiz/start_screen.dart';
import 'package:app_03_quiz/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
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

  @override
  Widget build(context) {
    // var screenWidget = StartScreen(switchScreen);
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
          child: activeScreen == 'start-screen'
              ? StartScreen(switchScreen) 
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}