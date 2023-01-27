import 'package:budget_tracer_practice/common/custom_dropdown.dart';
import 'package:control_style/decorated_input_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:date_time_picker/date_time_picker.dart';

import '../common/custom_button.dart';
import '../common/custom_categoryDropDown.dart';
import '../common/custom_icon.dart';
import '../common/custom_textfield.dart';

class Income extends StatefulWidget {
  const Income({super.key});

  @override
  State<Income> createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
  final _formKey = GlobalKey<FormState>();

  String dropdownvalue = 'Prime Bank';
  String selectionvalue = 'Category';

  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController date = new TextEditingController();

  final form = GlobalKey<FormState>();
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void> Add() async {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Form(
          key: _formKey,
          child: Container(
            // margin:EdgeInsets.only(top:MediaQuery.of(context).viewPadding.top),
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
                ),
                CustomTextField(
                  hintText: "Title",
                ),
                SizedBox(
                  height: 40,
                ),
                CustomTextField(
                  hintText: "Amount",
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
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    }
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
