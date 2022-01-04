import 'package:expenze/model/expense.dart';
import 'package:flutter/material.dart';


class ExpenseListElement extends StatefulWidget {
  const ExpenseListElement({Key? key,
  required this.expense,
    required this.deleteExpense
  }) : super(key: key);

  final Expense expense;
  final Function deleteExpense;

  @override
  _ExpenseListElementState createState() => _ExpenseListElementState();
}

class _ExpenseListElementState extends State<ExpenseListElement> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            border: Border(
              left: BorderSide(
                  color:Colors.black,
                  width: 3),
            )
        ),
        padding: EdgeInsets.all(8),
        child: Row(

          children: [

            Text(widget.expense.name,style: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
                fontSize: 20)),
            Spacer(),
            Text("₹ "+widget.expense.cost.toString(),style: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
                fontSize: 20)),


            GestureDetector(
                onTap: (){

                  widget.deleteExpense();

                },
                child: Icon(Icons.delete)
            )
          ],
        )
    );

  }
}
