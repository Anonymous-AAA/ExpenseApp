import 'package:flutter/material.dart';


class TotalExpenseElement extends StatefulWidget {
  const TotalExpenseElement({Key? key,
  required this.total
  }) : super(key: key);

  final int  total;
  @override
  _TotalExpenseElementState createState() => _TotalExpenseElementState();
}

class _TotalExpenseElementState extends State<TotalExpenseElement> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: [
          Text("Total",style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.bold,
              fontSize: 40)),
          Spacer(),
          Text("₹${widget.total}",style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.bold,
              fontSize: 30)),
        ],
      ),
    );

  }
}
