class Expense{

  String name;
  int cost;

  Expense({required this.name,required this.cost});

  factory Expense.fromJson(Map<String,dynamic> data) =>Expense(name: data["name"], cost: data["cost"]);

  Map<String,dynamic> toJson()=>{
    'name': name,
    'cost':cost
  };


}