import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  const StyledText(this.text, {super.key});

  final String text; //store the received positional argument

  @override
  Widget build(context) {
    return Text(
      text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 28.0,
      ),
    );
  }
}