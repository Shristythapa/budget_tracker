import 'package:flutter/material.dart';

class ExpenseCatgery extends StatelessWidget {
  ExpenseCatgery({Key? key}) : super(key: key);

  final List<Map> myProducts = List.generate(9, (index) => {"id": index,
    "name": "${['School Fees', 'Fuel', 'Goseries', 'Clothings','Medicines', 'Gift', 'Stationary', 'House Rent','Travel'][index]}"}).toList();


 