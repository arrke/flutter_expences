import 'dart:math';

import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registredExpenses = [
    Expense(
        title: "Groceries",
        amount: 50.00,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        title: "Gas",
        amount: 30.00,
        date: DateTime.now().subtract(const Duration(days: 1)),
        category: Category.travel),
    Expense(
        title: "Dinner",
        amount: 100.00,
        date: DateTime.now().subtract(const Duration(days: 2)),
        category: Category.leisure),
    Expense(
        title: "Lunch",
        amount: 20.00,
        date: DateTime.now().subtract(const Duration(days: 3)),
        category: Category.food),
    Expense(
        title: "Uber",
        amount: 15.00,
        date: DateTime.now().subtract(const Duration(days: 4)),
        category: Category.travel),
    Expense(
        title: "Movie",
        amount: 30.00,
        date: DateTime.now().subtract(const Duration(days: 5)),
        category: Category.leisure),
    Expense(
        title: "Lunch",
        amount: 20.00,
        date: DateTime.now().subtract(const Duration(days: 6)),
        category: Category.food),
    Expense(
        title: "Gas",
        amount: 30.00,
        date: DateTime.now().subtract(const Duration(days: 7)),
        category: Category.travel),
    Expense(
        title: "Dinner",
        amount: 100.00,
        date: DateTime.now().subtract(const Duration(days: 8)),
        category: Category.leisure),
    Expense(
        title: "Groceries",
        amount: 50.00,
        date: DateTime.now().subtract(const Duration(days: 9)),
        category: Category.food),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text('the chart'),
        Expanded(
          child: ExpensesList(expenses: _registredExpenses),
        ),
      ],
    ));
  }
}
