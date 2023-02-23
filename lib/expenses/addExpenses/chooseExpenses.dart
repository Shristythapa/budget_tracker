import 'package:flutter/material.dart';

class ExpensesCategory extends StatelessWidget {
  ExpensesCategory({Key? key}) : super(key: key);

  final List<Map> myProducts = List.generate(2, (index) => {"id": index,
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
        title: const Text('Choose Expenses Category',
          style: TextStyle(color: Colors.black87),),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),

      body: Padding(
        padding: const EdgeInsets.all(17.0),
        // implement GridView.builder
        child: GridView.count(
          children: [
            ...myProducts.map((e) =>  Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0XFFD9D9D9),
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                e["name"],
                style: TextStyle(color: Colors.black87, fontSize: 20),
              ),
            ),),
            InkWell(
              onTap: (){

              },
              child: Stack(
                children: [
                  Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0XFFD9D9D9),
                          shape: BoxShape.circle),
                      child: Icon(Icons.add)
                  ),
                  // Align(
                  //   alignment: Alignment.bottomCenter,
                  //     child: Text('Add Category'))
                ],
              ),
            ),

          ],
          crossAxisCount: 2,
          childAspectRatio: (1.2 / .7),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,),
      ),
    );
  }
}
