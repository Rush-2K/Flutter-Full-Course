import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 153, 10, 189),
                Color.fromARGB(255, 183, 141, 194),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Text('Welcome Siri', style: TextStyle(
              color: Colors.white,
              fontSize: 28.0,
            )),
          ),
        ),
      ),
    ),
  );
}
