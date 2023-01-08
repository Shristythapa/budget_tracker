import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddListOfSavings extends StatefulWidget {
  const AddListOfSavings({Key? key}) : super(key: key);

  @override
  State<AddListOfSavings> createState() => _addListOfSavingsState();
}

class _addListOfSavingsState extends State<AddListOfSavings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            )),
        backgroundColor:  Color.fromARGB(248, 133, 191, 180),
    
  }
}


  return SizedBox(
    height: 100,
    width: 100,
    child: Card(
      
      color: Color(0xFFEFEFEF),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("For travel",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
          Text("2020000",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),)
        ],
      ),
    ),
  );
}