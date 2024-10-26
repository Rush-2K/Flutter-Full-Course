import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(const Color.fromARGB(255, 7, 24, 172), const Color.fromARGB(255, 122, 142, 185)),
      ),
    ),
  );
}


