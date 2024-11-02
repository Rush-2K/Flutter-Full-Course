import 'package:app_04_expense_tracker/models/expense.dart';
import 'package:app_04_expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
  });

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(  //allow us to add only the visible data for scrollview
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => ExpenseItem(expenses[index]),
    );
  }
}
