import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:date_time_picker/date_time_picker.dart';

class Expense extends StatefulWidget {
  const Expense({super.key});

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  String dropdownvalue = 'Prime Bank';
  String selectionvalue = 'Category';
  // List of items in our dropdown menu
  var items = [
    'Prime Bank',
    'Sidhhartha Bank',
    'Himalayan Bank',
    'Esewa',
    'Cash',
  ];
  var categories = [
    'Category',
    'Expenses',
    'stocks',
  ];
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController date = new TextEditingController();

  final form = GlobalKey<FormState>();
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void> Add() async {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 252, 252),
      body: Form(
        key: form,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Add Expense",
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold,
                          ))
                    ])),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                controller: email,
                validator: (String? value) {
                  if (value == null || value == "") {
                    return "Title is required";
                  }

                  return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    hintText: "Title",
                    prefixIcon: Icon(Icons.description)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: DateTimePicker(
                initialValue: '',
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                dateLabelText: 'Date',
                onChanged: (val) => print(val),
                validator: (val) {
                  print(val);
                  return null;
                },
                onSaved: (val) => print(val),
                // locale: Locale("en", "CN"),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    hintText: "Date",
                    prefixIcon: Icon(Icons.date_range)),
              ),
            ),

