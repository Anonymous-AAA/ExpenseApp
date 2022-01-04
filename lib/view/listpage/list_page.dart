import 'package:expenze/Controller/appdata.dart';
import 'package:expenze/view/listpage/list_page_element.dart';
import 'package:expenze/view/listpage/list_page_fab.dart';
import 'package:expenze/view/listpage/list_page_total_element.dart';
import 'package:flutter/material.dart';


class ExpenseHomePage extends StatefulWidget {
  const ExpenseHomePage({Key? key}) : super(key: key);

  @override
  _ExpenseHomePageState createState() => _ExpenseHomePageState();
}


class _ExpenseHomePageState extends State<ExpenseHomePage> {



  @override



  Widget build(BuildContext context) {
    return  Scaffold(
      body:Padding(
        padding:EdgeInsets.only(
        left:10,
        right:10,
        top: 100,
        bottom: 10),
        child: Column(
          children: [
            const Text("Expense Manager",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color:Colors.black,
            ),
            ),
            SizedBox(height: 50,),
            Expanded(
              child:ListView.builder(
                  itemBuilder: (context,index){

                    return   ExpenseListElement(expense: AppData.getExpense()[index],
                      deleteExpense:(){
                        setState(() {
                          AppData.deleteExpense(index);
                        });
                      } ,);
                  },
                  itemCount: AppData.getExpense().length,
              ),

            ),


          ],
        ),
      ),
      bottomNavigationBar: TotalExpenseElement(total: AppData.getTotal(),),
      floatingActionButton:
      ListPageFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
