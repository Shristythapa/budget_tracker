import 'package:control_style/decorated_input_border.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../common/custom_button.dart';
import '../../common/custom_categoryDropDown.dart';
import '../../common/custom_dropdown.dart';
import '../../common/custom_textfield.dart';

class EditIncome extends StatefulWidget {
  const EditIncome({super.key});

  @override
  State<EditIncome> createState() => _EditIncomeState();
}

class _EditIncomeState extends State<EditIncome> {
   TextEditingController amount = new TextEditingController();
  TextEditingController title = new TextEditingController();
  TextEditingController date = new TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         leading: Icon(
           Icons.arrow_back_ios_new_outlined,
           color: Colors.black,
           ),
         elevation: 0,
         backgroundColor: Colors.transparent,
       ),
        body: ListView(
      children: [
        Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                CustomTextField(
                  controller: title,
                  hintText: "Title",
                ),
                SizedBox(
                  height: 40,
                ),
                CustomTextField(
                  controller: amount,
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
                  title: "Update",
                  onPressed: () {
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                CustomButton(
                  title: "Delete",
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