import 'package:budget_tracer_practice/income/addincome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../main_dashboard/dashboard_screen.dart';

class NavigationBodyScreen extends StatefulWidget {
  const NavigationBodyScreen({super.key});

  @override
  State<NavigationBodyScreen> createState() => _NavigationBodyScreenState();
}

class _NavigationBodyScreenState extends State<NavigationBodyScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 560,
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
                        Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>Income()));
                    print("Container");
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
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 1, left: 20),
                              child: ImageIcon(
                                AssetImage("assets/images/income.png"),
                                size: 60,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, left: 100),
                              child: Text("Income",
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
                top: 70,
              ),

              // second
              Positioned(
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
                          Padding(
                            padding: const EdgeInsets.only(top: 1, left: 20),
                            child: ImageIcon(
                              AssetImage("assets/images/expn.png"),
                              size: 60,
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 100),
                            child: Text("Expenses",
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
                right: 0,
                left: 0,
                top: 180,
              ),
              Positioned(
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
                      child: InkWell(
                        onTap: () {
                          
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 1, left: 20),
                              child: ImageIcon(
                                AssetImage("assets/images/transfer.png"),
                                size: 60,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 100),
                              child: Text("Transfer",
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
                right: 0,
                left: 0,
                top: 290,
              ),
// button
              Positioned(
                child: Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFEFEFEF), // background
                          foregroundColor: Colors.black,
                          shape: StadiumBorder()
                          // foreground
                          ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        child: Text("Cancel",
                            style: TextStyle(
                              fontSize: 22,
                            )),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
                right: 0,
                left: 0,
                top: 420,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
