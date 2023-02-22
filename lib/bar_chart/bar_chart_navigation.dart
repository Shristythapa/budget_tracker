import 'package:budget_tracer_practice/dashboard/main_dashboard/sidebar.dart';
import 'package:flutter/material.dart';

import '../category/report_header.dart';
import '../common/custom_date_picker.dart';
import 'income_barchart.dart';

class BarChartNavigation extends StatefulWidget {
  bool selected;
  BarChartNavigation({super.key, required this.selected});

  @override
  State<BarChartNavigation> createState() => _BarChartNavigationState();
}

class _BarChartNavigationState extends State<BarChartNavigation> {
  int idx = 0;
  List<Widget> BarChartScreen = [
    Center(
      child: Text("Bar Chart Overall"),
    ),
    BarChart(),
    BarChart()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFA77ABA2),
          leading:
           
          IconButton(icon: Icon(Icons.arrow_back), onPressed: () { Navigator.pop(context);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => sidebar()),
                                  ); },
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
              BottomNavigationBarItem(
                icon: SizedBox(),
                label: "Overall",
              ),
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
          BarChartScreen[idx],
        ]));
  }
}
