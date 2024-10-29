import 'package:app_03_quiz/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:app_03_quiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  
  var currentQuestionIndex = 0;

  void answerQuestion () {
    setState(() {
      currentQuestionIndex += 1;
    });
    
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity, //use as much as we can
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //vertical axis since now is column
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((item) {
              return AnswerButton(answerText: item, onTap: answerQuestion);
            })
          ],
        ),
      ),
    );
  }
}
