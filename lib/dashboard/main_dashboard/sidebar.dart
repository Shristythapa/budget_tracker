import 'package:budget_tracer_practice/addsavings/addsaving.dart';
import 'package:budget_tracer_practice/bar_chart/bar_chart_navigation.dart';
import 'package:budget_tracer_practice/dashboard/main_dashboard/dashboard_body.dart';
import 'package:budget_tracer_practice/view_saving/mysavings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../accounts/addListOfAccount.dart';
import '../../bar_chart/expense_barchart.dart';

class sidebar extends StatefulWidget {
  const sidebar({super.key});

  @override
  State<sidebar> createState() => _sidebarState();
}

class _sidebarState extends State<sidebar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Color(0xFF77ABA2),
          leading: IconButton(icon: Icon(Icons.arrow_back),

            onPressed: (() {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DashboardBody()),
              );
            }),),
          title:Text("")
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top + 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 400, bottom: 50),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.close,
                        size: 50,
                      )),
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 572,
                      decoration: BoxDecoration(
                          color: Color(0xFF77ABA2),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(70),
                            topRight: Radius.circular(70),
                          )),
                      // width: 150,
                    ),

                    Positioned(
                      child: GestureDetector(
                        onTap: () {
                          //     Navigator.push(
                          // context,
                          // MaterialPageRoute(builder: (context)=>DashboardScreen()));
                          // print("Container");
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 85,
                              width: 315,
                              decoration: BoxDecoration(
                                color: Color(0xFFEFEFEF),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFFA10564A).withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 10,
                                    offset:
                                    Offset(0, 5), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                   Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => BarChartNavigation(
                                selected: true,
                              )),
                                  );
                                },
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(top: 1, left: 20),
                                      child: ImageIcon(
                                        AssetImage("assets/images/wallet.png"),
                                        size: 60,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(top: 10, left: 100),
                                      child: Text("Chart",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 25,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      right: 0,
                      left: 0,
                      top: 100,
                    ),
                    Positioned(
                      child: GestureDetector(
                        onTap: () {
                          //     Navigator.push(
                          // context,
                          // MaterialPageRoute(builder: (context)=>DashboardScreen()));
                          // print("Container");
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 85,
                              width: 315,
                              decoration: BoxDecoration(
                                color: Color(0xFFEFEFEF),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFFA10564A).withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 10,
                                    offset:
                                    Offset(0, 5), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AddListOfAccount()),
                                  );
                                },
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(top: 1, left: 20),
                                      child: ImageIcon(
                                        AssetImage("assets/images/wallet.png"),
                                        size: 60,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(top: 10, left: 100),
                                      child: Text("Account",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 25,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      right: 0,
                      left: 0,
                      top: 250,
                    ),

                    Positioned(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddListOfSavings()),
                          );

                        },
                        child: Column(
                          children: [
                            Container(
                              height: 85,
                              width: 315,
                              decoration: BoxDecoration(
                                color: Color(0xFFEFEFEF),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFFA10564A).withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 10,
                                    offset: Offset(0, 5), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top: 1, left: 20),
                                    child: ImageIcon(
                                      AssetImage("assets/images/money-saving.png"),
                                      size: 60,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, left: 100),
                                    child: Text("Savings",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 25,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      right: 0,
                      left: 0,
                      top:400,
                    ),
                  ],
                ),
              ],
            ),

          ),
        ],
      ),
    );
  }
}
