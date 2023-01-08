import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddListOfSavings extends StatefulWidget {
  const AddListOfSavings({Key? key}) : super(key: key);

  @override
  State<AddListOfSavings> createState() => _addListOfSavingsState();
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