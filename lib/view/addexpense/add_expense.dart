import 'package:expenze/view/addexpense/addexpenseFAB.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AddExpensePage extends StatefulWidget {
  const AddExpensePage({Key? key}) : super(key: key);

  @override
  _AddExpensePageState createState() => _AddExpensePageState();
}

class _AddExpensePageState extends State<AddExpensePage> {

  String expenseName="";
   int cost=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:const EdgeInsets.only(
            left:10,
            right:10,
            top: 100,
            bottom: 10),
        child:Column(
          children: [
            const Text("Add Expense",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
            SizedBox(height: 50,),
            Padding(
              padding:EdgeInsets.symmetric(
                horizontal:40,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Expense Name'
                ),
                onChanged: (str){


                  setState(() {

                    expenseName=str;

                  });

                },
              ),
            ),
            SizedBox(height: 50,),
            Padding(
              padding:EdgeInsets.symmetric(
                horizontal:40,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Cost'
                ),
                  keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                onChanged: (str){
                  setState(() {

                    cost=int.parse(str);

                  });

                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: AddExpenseFAB(expenseName: expenseName,cost: cost,),
    );
  }
}
