import 'package:expenze/Controller/appdata.dart';
import 'package:flutter/material.dart';
import 'view/listpage/list_page.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppData.initExpense();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const ExpenseHomePage()
    );
  }

}
