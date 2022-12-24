import 'package:control_style/decorated_input_border.dart';
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
           
          DropdownButtonFormField2(
            decoration: InputDecoration(
              border: DecoratedInputBorder(
              child: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                              width: 0, 
                              style: BorderStyle.none,
                          ),
              ),
              shadow:[
                BoxShadow(
                  color: Color.fromARGB(255, 174, 175, 175),
                  blurRadius: 12,
                )
              ],
            ),
            contentPadding: EdgeInsets.zero,
            filled: true,
            fillColor: Colors.white,
      ),
      
              isDense: true,
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
            // buttonPadding: const EdgeInsets.only(left: 20, right: 10),
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
          // const SizedBox(height: 30),
         
        ],
      ),
    );
  }
}