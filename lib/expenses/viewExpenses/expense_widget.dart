import 'package:flutter/material.dart';

import '../../common/custom_box.dart';
import '../../common/custom_date_picker.dart';
import '../../common/custom_icon.dart';
import '../../dashboard/main_dashboard/dashboard_body.dart';

class ExpenseWidget extends StatefulWidget {
   ExpenseWidget({super.key});

   final List<Map<String,dynamic>>_items=[
    {
      "title": "Food",
      "rs":"Rs. 4000"
    },
    {
      "title": "Books",
      "rs":"Rs. 3000"
    },
    {
      "title": "Travel",
      "rs":"Rs. 10000"
    },
     {
      "title": "Food",
      "rs":"Rs. 4000"
    },
    {
      "title": "Books",
      "rs":"Rs. 3000"
    },
    {
      "title": "Travel",
      "rs":"Rs. 10000"
    },
  ];

  @override
  State<ExpenseWidget> createState() => _ExpenseWidgetState();
}

class _ExpenseWidgetState extends State<ExpenseWidget> {
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
              onPressed: (){
                Navigator.pop(context);

                 Navigator.push(
                      context, MaterialPageRoute(builder: (context) => DashboardBody()));
              },
              ),
              SizedBox(height: 20,),
              Center(
                child: Text(
                  "Expenses",
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