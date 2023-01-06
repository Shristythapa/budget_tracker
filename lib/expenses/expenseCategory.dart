import 'package:flutter/material.dart';

class ExpenseCatgery extends StatelessWidget {
  ExpenseCatgery({Key? key}) : super(key: key);

  final List<Map> myProducts = List.generate(9, (index) => {"id": index,
    "name": "${['School Fees', 'Fuel', 'Goseries', 'Clothings','Medicines', 'Gift', 'Stationary', 'House Rent','Travel'][index]}"}).toList();


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

      body: Padding(
        padding: const EdgeInsets.all(17.0),
        // implement GridView.builder
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 180,
                childAspectRatio: (1.2 / .7),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: myProducts.length,
           
    );
  }
}
