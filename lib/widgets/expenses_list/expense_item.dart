import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: ListTile(
          leading: CircleAvatar(
            child: FittedBox(
              child: Text('\$${expense.amount.toStringAsFixed(2)}'),
            ),
          ),
          title: Row(children: [
            Text(expense.title),
            const Spacer(),
            Text(
              expense.category.toString().split('.').last,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ]),
          subtitle: Text(expense.date.toString()),
        ),
      ),
    );
  }
}
