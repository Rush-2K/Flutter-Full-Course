import 'package:flutter/material.dart';

import 'package:app_04_expense_tracker/widgets/expenses.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Expenses(),
    ),
  );
}