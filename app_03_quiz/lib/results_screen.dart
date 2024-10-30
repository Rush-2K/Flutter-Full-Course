import 'package:flutter/material.dart';

class ResultsScreens extends StatelessWidget {
  const ResultsScreens({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, //use as much as we can
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered X out of Y questions correctly!'),
            const SizedBox(height: 30,),
            const Text('List of answers and questions..'),
            const SizedBox(height: 30,),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz!'),
            )
        ],
      ),
      ),
    );
  }
}