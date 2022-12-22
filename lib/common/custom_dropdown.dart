import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  final String hint;
  const CustomDropDown({super.key, required this.hint});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {

  
final List<String> bankItems = [
  'Himalayan Bank',
  'Sanima Bank',
  'Nabil Bank',
  'Prabhu Bank',
];

String? selectedValue;

final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
        children: [
           SizedBox(height: 30),
          Material(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            child: DropdownButtonFormField2(
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                  border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          borderSide: BorderSide(
                          width: 0, 
                          style: BorderStyle.none,
                      ),
                        ),
                          filled:true,
                  fillColor:Colors.white,
              ),
              isExpanded: true,
              hint:  Text(
                widget.hint,
                style: TextStyle(fontSize: 16),
              ),
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.black45,
              ),
              iconSize: 30,
              buttonHeight: 50,
              buttonPadding: const EdgeInsets.only(left: 20, right: 10),
              dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              items: bankItems
                      .map((item) =>
                      DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ))
                      .toList(),
              validator: (value) {
                if (value == null) {
                  return 'Please select bank account.';
                }
              },
              onChanged: (value) {
                //Do something when changing the item if you want.
              },
              onSaved: (value) {
                selectedValue = value.toString();
              },
            ),
          ),
          const SizedBox(height: 30),
         
        ],
      ),
    );
  }
}