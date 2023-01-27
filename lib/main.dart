import 'package:budget_tracer_practice/income/viewIncome/view_income_details.dart';
import 'package:budget_tracer_practice/login.dart';
import 'package:budget_tracer_practice/income/viewIncome/view_income_screen.dart';
import 'package:flutter/material.dart';

import 'income/addIncome/addincome.dart';
import 'income/addIncome/chooseIncome.dart';
import 'income/editIncome/edit_income.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: EditIncome());
  }
}
