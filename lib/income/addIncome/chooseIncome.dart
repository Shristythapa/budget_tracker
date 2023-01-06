import 'package:flutter/material.dart';

class ExpenseCatgery extends StatelessWidget {
  ExpenseCatgery({Key? key}) : super(key: key);

  final List<Map> myProducts = List.generate(1, (index) => {"id": index,
    "name": "${['Salary', 'FreeLancing'][index]}"}).toList();


  
  }
}