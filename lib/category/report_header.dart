import 'package:flutter/material.dart';

import '../bar_chart/bar_chart_navigation.dart';
import 'bottom_navigation.dart';

class ReportHeader extends StatefulWidget {
  bool selected;
  ReportHeader({super.key, required this.selected});

  @override
  State<ReportHeader> createState() => _ReportHeaderState();
}

class _ReportHeaderState extends State<ReportHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 80),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    print("category onpressed");
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => CustomBottomNavigation(
                            selected: true,
                          )),
                    ));
                  },
                  child: Container(
                    padding: EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: widget.selected
                          ? Color(0xFFA77ABA2)
                          : Colors.grey[50],
                    ),
                    child: Text(
                      "Category",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: widget.selected
                            ? Colors.grey[50]
                            : Color(0xFFA77ABA2),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => BarChartNavigation(
                                selected: true,
                              )),
                    );
                    setState(() {
                      widget.selected = !widget.selected;
                    });
                  },
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => BarChartNavigation(
                                selected: true,
                              )),
                    );
                    },
                    child: Container(
                      padding: EdgeInsets.all(14),
                      color: Colors.grey[100],
                      child: Text(
                        "Bar Chart",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: widget.selected
                              ? Color(0xFFA77ABA2)
                              : Color(0xFFA77ABA2),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
