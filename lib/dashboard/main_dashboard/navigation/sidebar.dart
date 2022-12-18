import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../dashboard.dart';

class sidebar extends StatefulWidget {
  const sidebar({super.key});

  @override
  State<sidebar> createState() => _sidebarState();
}

class _sidebarState extends State<sidebar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 560,
                  decoration: BoxDecoration(
                      color: Color(0xF9296157),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                        topRight: Radius.circular(70),
                      )),
                  // width: 150,
                ),
                Positioned(
                  child: GestureDetector(
                    // onTap: () {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => DashboardScreen()));
                    //   // print("Container");
                    // },
                    child: Column(
                      children: [
                        Container(
                          height: 85,
                          width: 315,
                          decoration: BoxDecoration(
                            color: Color(0xFFA95894E),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.only(top: 1, left: 20),
                                  child: Icon(
                                    Icons.wallet,
                                    size: 40,
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 100),
                                child: Text("Wallet",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 22,
                                        color: Colors.black)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  right: 0,
                  left: 0,
                  top: 30,
                ),

                // second
                Positioned(
                  child: GestureDetector(
                    // onTap: () {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => DashboardScreen()));
                    //   // print("Container");
                    // },
                    child: Column(
                      children: [
                        Container(
                          height: 85,
                          width: 315,
                          decoration: BoxDecoration(
                            color: Color(0xFFA95894E),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.only(top: 1, left: 20),
                                  child: Icon(
                                    Icons.pie_chart_sharp,
                                    size: 40,
                                  )),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 100),
                                  child: Text(
                                    "Charts",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        color: Colors.black),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  right: 0,
                  left: 0,
                  top: 150,
                ),
                Positioned(
                  child: GestureDetector(
                    // onTap: () {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => DashboardScreen()));
                    //   // print("Container");
                    // },
                    child: Column(
                      children: [
                        Container(
                          height: 85,
                          width: 315,
                          decoration: BoxDecoration(
                            color: Color(0xFFA95894E),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.only(top: 1, left: 20),
                                  child: Icon(
                                    Icons.savings,
                                    size: 40,
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 100),
                                child: Text("Savings",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        color: Colors.black)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  right: 0,
                  left: 0,
                  top: 270,
                ),

                Positioned(
                  child: GestureDetector(
                    // onTap: () {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => DashboardScreen()));
                    //   // print("Container");
                    // },
                    child: Column(
                      children: [
                        Container(
                          height: 85,
                          width: 315,
                          decoration: BoxDecoration(
                            color: Color(0xFFA95894E),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.only(top: 1, left: 20),
                                  child: Icon(
                                    Icons.double_arrow,
                                    size: 40,
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 100),
                                child: Text("Recurring\nExpenses",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        color: Colors.black)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  right: 0,
                  left: 0,
                  top: 400,
                ),
// button
                Positioned(
                  child: Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFA95894E), // background
                          foregroundColor: Colors.black, // foreground
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 10, bottom: 10),
                          child: Text("Cancel",
                              style: TextStyle(
                                fontSize: 20,
                              )),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DashboardScreen()));
                          // print("Container");
                        },
                      ),
                    ],
                  ),
                  right: 0,
                  left: 0,
                  top: 500,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
