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
          vertical: 16,
        ),
        child: ListTile(
          leading: CircleAvatar(
            child: FittedBox(
              child: Text('\$${expense.amount.toStringAsFixed(2)}'),
            ),
          ),
          title: Row(children: [
            Text(expense.title, style: Theme.of(context).textTheme.titleMedium,),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(expense.icon),
              ],
            ),
          ]),
          subtitle: Text(expense.getFormattedDate),
        ),
      ),
    );
  }
}
