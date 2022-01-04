import 'package:expenze/view/addexpense/add_expense.dart';
import 'package:flutter/material.dart';

class ListPageFAB extends StatelessWidget {
  const ListPageFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(child: Icon(Icons.add), onPressed: () {

      Navigator.of(context).pushReplacement(
        MaterialPageRoute (
          builder: (BuildContext context) => const AddExpensePage(),
        ),
      );
    });

  }
}
