import 'package:flutter/material.dart';

import '../../../common/custom_date_picker.dart';
import '../../../common/custom_icon.dart';
import '../../common/custom_box.dart';

class IncomeWidget extends StatefulWidget {
   IncomeWidget({super.key});

  final List<Map<String,dynamic>>_items=[
    {
      "title": "Salary",
      "rs":"Rs. 4000"
    },
    {
      "title": "Frelancing",
      "rs":"Rs. 3000"
    },
    {
      "title": "Marketing",
      "rs":"Rs. 10000"
    },
    {
      "title": "Salary",
      "rs":"Rs. 4000"
    },
    {
      "title": "Frelancing",
      "rs":"Rs. 3000"
    },
    {
      "title": "Marketing",
      "rs":"Rs. 10000"
    },
    {
      "title": "Salary",
      "rs":"Rs. 4000"
    },
    {
      "title": "Frelancing",
      "rs":"Rs. 3000"
    },
    {
      "title": "Marketing",
      "rs":"Rs. 10000"
    },
  ];

  @override
  State<IncomeWidget> createState() => _IncomeWidgetState();
}

class _IncomeWidgetState extends State<IncomeWidget> {
  @override
  Widget build(BuildContext context) {
      DateTime? selectedDate;

    return Scaffold(
      backgroundColor: Colors.white,
      body:Container(
        margin:EdgeInsets.only(top:MediaQuery.of(context).viewPadding.top+10),
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomIcon(
              icon: Icons.close,
              onPressed:(){
                Navigator.pop(context);
              }
              ),
              SizedBox(height: 20,),
              Center(
                child: Text(
                  "Income",
                  style:TextStyle(
                   fontSize:32,
                   fontWeight: FontWeight.w400,
                 )
                  ),
              ),
                  SizedBox(height: 5,),
                 Row(
                   children: [
                     CustomDatePicker(title: "Month",),
                     SizedBox(width:150),
                     CustomDatePicker(title: "Year",),
                   ],
                 ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder:(context, index){
                        return CustomBox(
                          title:widget._items[index]["title"],
                          rs:widget._items[index]["rs"],
                        );
                      },
                      itemCount:widget._items.length,
                    ),
                  ),
          ],
        ),
      )
    );
  }
}