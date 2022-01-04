

import 'dart:convert';

import 'package:expenze/model/expense.dart';
import 'package:shared_preferences/shared_preferences.dart';


// List <Expense> globalEventlist=[Expense(name: "Egg",cost: 100),Expense(name: "Juicegfghhfhgf",cost:1000)];

class AppData{

  static List <Expense> _expenseList=[];
  static late SharedPreferences _sharedPreferences;
  static List <String> _jsonExpenseList=[];

  static Future<void> initExpense() async{

    _sharedPreferences= await SharedPreferences.getInstance();

    final _tempJsonExpenseList= _sharedPreferences.getStringList("expenseList");
    if(_tempJsonExpenseList!=null){
      _jsonExpenseList=_tempJsonExpenseList;
      _expenseList=_tempJsonExpenseList.map((e) => Expense.fromJson(jsonDecode(e))).toList();

    }

  }

  static List<Expense> getExpense(){
    return _expenseList;
  }

  static int getTotal(){

    int total=0;
    for(Expense i in _expenseList){

      total=total+i.cost;

    }

    return total;

  }


  static Future<void> addExpense(Expense expense) async{

    _expenseList.add(expense);
    _jsonExpenseList.add(jsonEncode(expense));

    await _sharedPreferences.setStringList('expenseList', _jsonExpenseList);


  }

  static Future<void> saveExpense() async{

    _jsonExpenseList=_expenseList.map((expense)=>jsonEncode(expense)).toList();
    await _sharedPreferences.setStringList('expenseList', _jsonExpenseList);
  }

  static Future<void> deleteExpense(int index) async{

    _expenseList.removeAt(index);
    _jsonExpenseList.removeAt(index);
    await _sharedPreferences.setStringList('expenseList', _jsonExpenseList);
  }



}