import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer( Color.fromARGB(255, 7, 24, 172),  Color.fromARGB(255, 122, 142, 185)),
      ),
    ),
  );
}


