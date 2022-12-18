import 'package:flutter/material.dart';

import 'navigation/navigation.dart';

class DashboardBody extends StatefulWidget {
  const DashboardBody({super.key});

  @override
  State<DashboardBody> createState() => _DashboardBodyState();
}

class _DashboardBodyState extends State<DashboardBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 94,
            width: 329,
            decoration: BoxDecoration(
              color: Color(0xFFA95894E),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 5), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 25),
                  child: Text("Balance :",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 70),
                  child: Text("10,100000",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          // income

          Container(
            height: 94,
            width: 329,
            decoration: BoxDecoration(
              color: Color(0xFFA95894E),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 5), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 25),
                  child: Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Income",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "20,0000",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2, left: 150),
                  child: Icon(Icons.badge_rounded, size: 60),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          // expense

          Container(
            height: 94,
            width: 329,
            decoration: BoxDecoration(
              color: Color(0xFFA95894E),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 5), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 25),
                  child: Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Expense",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "10,0000",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2, left: 150),
                  child: Icon(Icons.badge_rounded, size: 60),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 120,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Container(
                color: Color(0xF9296157),
                height: 160,
                // width: 150,
              ),
              Positioned(
                child: FloatingActionButton(
                  child: Icon(Icons.add, size: 30),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NavigationScreen()));
                  },
                  backgroundColor: Color(0xFFA95894E),
                ),
                right: 0,
                left: 0,
                top: -30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
