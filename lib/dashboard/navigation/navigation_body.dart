
import 'package:flutter/material.dart';

import '../../balanceTransfer/balance_transfer_screen.dart';
import '../../income/addIncome/addincome.dart';
import '../main_dashboard/dashboard_body.dart';

class NavigationBodyScreen extends StatefulWidget {
  const NavigationBodyScreen({super.key});

  @override
  State<NavigationBodyScreen> createState() => _NavigationBodyScreenState();
}

class _NavigationBodyScreenState extends State<NavigationBodyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:
            Icon(Icons.person_rounded, color: Color(0xFFA296157), size: 60),

        title: Column(
          children: [
            Text(
              "Hello",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              "There",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.black,
            iconSize: 40,
          )
        ],
        // iconTheme: IconThemeData(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 500,
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
                    MaterialPageRoute(builder: (context)=> AddIncome()));
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
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
              Navigator.of(context).pushNamed("/add_expense");
                        },
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
                    ),
                  ],
                ),
                right: 0,
                left: 0,
                top: 180,
              ),
              Positioned(
                child: InkWell(
                  onTap: (() {
                       Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BalanceTransferScreen()),
              );
                  }),
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
                    ],
                  ),
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
                        Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DashboardBody()),
              );
                        
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
