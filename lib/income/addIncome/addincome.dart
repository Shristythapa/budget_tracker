<<<<<<< HEAD
import 'package:budget_tracer_practice/common/custom_dropdown.dart';
import 'package:control_style/decorated_input_border.dart';
import 'package:flutter/material.dart';

import 'package:date_time_picker/date_time_picker.dart';

<<<<<<<< HEAD:lib/income/addIncome/addincome.dart
import '../dashboard/navigation/navigation_body.dart';

========
import '../common/custom_button.dart';
import '../common/custom_categoryDropDown.dart';
import '../common/custom_icon.dart';
import '../common/custom_textfield.dart';
>>>>>>>> income:lib/income/addincome.dart

class Income extends StatefulWidget {
  const Income({super.key});

  @override
  State<Income> createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
  final _formKey = GlobalKey<FormState>();

  String dropdownvalue = 'Prime Bank';
  String selectionvalue = 'Category';
<<<<<<<< HEAD:lib/income/addIncome/addincome.dart
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
========
>>>>>>>> income:lib/income/addincome.dart

  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController date = new TextEditingController();

  final form = GlobalKey<FormState>();
=======
import 'package:control_style/decorated_input_border.dart';
import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';

import '../../common/custom_button.dart';
import '../../common/custom_categoryDropDown.dart';
import '../../common/custom_dropdown.dart';
import '../../common/custom_textfield.dart';

class AddIncome extends StatefulWidget {
  const AddIncome({super.key});

  @override
  State<AddIncome> createState() => _AddIncomeState();
}

class _AddIncomeState extends State<AddIncome> {
  final _formKey = GlobalKey<FormState>();


  TextEditingController amount = new TextEditingController();
  TextEditingController title = new TextEditingController();
  TextEditingController date = new TextEditingController();

>>>>>>> income
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void> Add() async {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
<<<<<<<< HEAD:lib/income/addIncome/addincome.dart
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
                      Text("Add Income",
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

            const SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                controller: password,
                validator: (String? value) {
                  if (value == null || value == "") {
                    return "Amount is required";
                  }
                  return null;
                },
               
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    hintText: "Amount",
                    prefixIcon: Icon(Icons.monetization_on),
                        ),
              ),
            ),
            SizedBox(
              height: 10,
              width: 1000,
            ),
            Container(
            margin: EdgeInsets.symmetric(horizontal: 60),

             width: double.infinity,
              decoration:BoxDecoration(
                 color: Colors.grey,borderRadius: BorderRadius.circular(20)),
              child: DropdownButton(
                value: dropdownvalue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
                hint: Text("Account"),
              ),
              
            ),
            SizedBox(
              height: 10,
              width: 1000,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 60),

              decoration:BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20)),

              child: DropdownButton(
                value: selectionvalue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: categories.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectionvalue = newValue!;
                  });
                },
                hint: Text("Account"),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            
            Container(
              height: 50,
              width: 300,
              margin: EdgeInsets.symmetric(horizontal: 60),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromRGBO(49, 39, 79, 1),
              ),
              child: ElevatedButton(
                onPressed: (() {
                  if (form.currentState!.validate()) {
                    Add();
                  } else {
                    print("Fail");
                  }
                }),
                child: Text(
                  "Add",
                  style: TextStyle(color: Colors.white),
========
=======
>>>>>>> income
        body: ListView(
      children: [
        Form(
          key: _formKey,
          child: Container(
<<<<<<< HEAD
            // margin:EdgeInsets.only(top:MediaQuery.of(context).viewPadding.top),
=======
>>>>>>> income
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Add Income",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                    )),
                SizedBox(
                  height: 40,
<<<<<<< HEAD
>>>>>>>> income:lib/income/addincome.dart
                ),
                CustomTextField(
                  hintText: "Title",
                ),
<<<<<<<< HEAD:lib/income/addIncome/addincome.dart
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 50,
              width: 300,
              margin: EdgeInsets.symmetric(horizontal: 60),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromRGBO(49, 39, 79, 1),
              ),
              child: ElevatedButton(
                onPressed: (() {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>NavigationBodyScreen()));
                }),
                child: Text(
                  "Cancel",
                  style: TextStyle(color: Colors.white),
========
=======
                ),
                CustomTextField(
                  controller: title,
                  hintText: "Title",
                ),
>>>>>>> income
                SizedBox(
                  height: 40,
                ),
                CustomTextField(
<<<<<<< HEAD
                  hintText: "Amount",
>>>>>>>> income:lib/income/addincome.dart
=======
                  controller: amount,
                  hintText: "Amount",
>>>>>>> income
                ),
                SizedBox(height: 40,),
                Container(
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
                    decoration: InputDecoration(
                        border: DecoratedInputBorder(
                          child: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          shadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 174, 175, 175),
                              blurRadius: 12,
                            )
                          ],
                        ),
                        contentPadding: EdgeInsets.zero,
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Date",
                        prefixIcon: Icon(Icons.date_range)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomDropDown(
                  hint: "Select account",
                ),
                SizedBox(
                  height: 10,
                ),
                CustomCategoryDropDown(hint: "Category"),
                SizedBox(
                  height: 50,
                ),
                CustomButton(
                  title: "Add",
                  onPressed: () {
<<<<<<< HEAD
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    }
=======
>>>>>>> income
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                CustomButton(
                  title: "Cancel",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
