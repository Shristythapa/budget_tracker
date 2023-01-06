import 'package:flutter/material.dart';

class ExpenseCatgery extends StatelessWidget {
  ExpenseCatgery({Key? key}) : super(key: key);

  final List<Map> myProducts = List.generate(1, (index) => {"id": index,
    "name": "${['Salary','FreeLancing'][index]}"}).toList();


  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.black87,
          ),
          onPressed: () {
            // do something
          },
        ),
        title: const Text('Choose Expense Category',
          style: TextStyle(color: Colors.black87),),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),

      
      ),
    );
  }
}