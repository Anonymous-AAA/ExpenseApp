import 'package:expenze/Controller/appdata.dart';
import 'package:expenze/model/expense.dart';
import 'package:expenze/view/listpage/list_page.dart';
import 'package:flutter/material.dart';

class AddExpenseFAB extends StatelessWidget {
  const AddExpenseFAB({Key? key,
  required this.expenseName,
    required this.cost,
  }) : super(key: key);

  final String expenseName;
  final int cost;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () async{
      if (expenseName != "" && cost!=0)
        {


          await AppData.addExpense(Expense(name:expenseName,cost:cost));
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) => const ExpenseHomePage(),
          ),
        );
    }
        },
        backgroundColor:Colors.black,
      child: Icon(Icons.save,
      color: Colors.white),
        );
  }

}
