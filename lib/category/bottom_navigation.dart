import 'package:budget_tracer_practice/category/income_category_body.dart';
import 'package:budget_tracer_practice/dashboard/main_dashboard/sidebar.dart';
import 'package:flutter/material.dart';
import '../common/custom_date_picker.dart';
import 'expense_category_body.dart';
import 'report_header.dart';

class CustomBottomNavigation extends StatefulWidget {
  bool selected;
  CustomBottomNavigation({super.key, required this.selected});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int idx = 0;
  List<Widget> ReportCategorySCreen = [
    ExpenseCategoryBody(),
    IncomeCategoryBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFA77ABA2),
          leading: IconButton(
            icon: Icon(Icons.arrow_back), onPressed: () { 
              Navigator.pop(context);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => sidebar()),
                                  );
             },
          ),
          title: Padding(
            padding: EdgeInsets.only(left: 55),
            child: Text(
              "Reports",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color(0xFFA77ABA2),
            items: [
              // BottomNavigationBarItem(
              //   icon: SizedBox(),
              //   label: "Overall",
              // ),
              BottomNavigationBarItem(
                icon: SizedBox(),
                label: "Expenses",
              ),
              BottomNavigationBarItem(
                icon: SizedBox(),
                label: "Income",
              ),
            ],
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            currentIndex: idx,
            onTap: (index) {
              setState(() {
                idx = index;
              });
            }),
        body: Column(children: [
          SizedBox(
            height: 20,
          ),
          ReportHeader(
            selected: true,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Row(
              children: [
                CustomDatePicker(title: "Month"),
                SizedBox(width: 80),
                CustomDatePicker(title: "Year"),
              ],
            ),
          )),
          SizedBox(
            height: 40,
          ),
          ReportCategorySCreen[idx],
        ]));
  }
  //  @override
  // void dispose() {
  //   _tabController.dispose();
  //   super.dispose();
  // }
}
