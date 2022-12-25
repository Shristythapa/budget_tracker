import 'package:flutter/material.dart';

import '../navigation/navigation_screen.dart';


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
              color: Color(0xFFAEFEFEF),
              borderRadius: BorderRadius.circular(20),
               boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 5), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 25),
                  child: Text(
                    "Balance :",
                    style: TextStyle(
                      fontWeight:FontWeight.w400,
                      fontSize: 22,
                      )),
                ),
                 Padding(
                  padding: const EdgeInsets.only(top: 10,left: 70),
                  child: Text(
                    "10,100000",
                    style: TextStyle(
                      fontWeight:FontWeight.w400,
                      fontSize: 25,
                      )),
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
                // income

           Container(
            height: 94,
            width: 329,
            decoration: BoxDecoration(
              color: Color(0xFFEFEFEF),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 5), // changes position of shadow
                ),
              ],

            ),

            child: Row(
              children: [
                 Padding(
                  padding: const EdgeInsets.only(top: 20,left: 25),
                   child: Expanded(
              flex:2,
              child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(
                      "Income",
                      style:TextStyle(
                        fontSize:22,
                        fontWeight: FontWeight.w400, 
                      ),
                      ),
                      Text(
                      "20,0000",
                      style:TextStyle(
                        fontSize:22,
                        fontWeight: FontWeight.w400,  
                      ),
                      ),
                ],
              ),
            ),
                 ),
                 Padding(
                  padding: const EdgeInsets.only(top: 2,left: 150),
                  child:ImageIcon(
                      AssetImage("assets/images/income.png"),
                      size:60,
                      color:Colors.black,
                      ),
                ),
              ],
            ),
    
          ),
           SizedBox(height: 30,),
                // expense

           Container(
            height: 94,
            width: 329,
            decoration: BoxDecoration(
              color: Color(0xFFEFEFEF),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 5), // changes position of shadow
                ),
              ],
            ),
            
            child: Row(
              children: [
                 Padding(
                  padding: const EdgeInsets.only(top: 20,left: 25),
                   child: Expanded(
              flex:2,
              child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(
                      "Expense",
                      style:TextStyle(
                        fontSize:22,
                        fontWeight: FontWeight.w400, 
                      ),
                      ),
                      Text(
                      "10,0000",
                      style:TextStyle(
                        fontSize:22,
                        fontWeight: FontWeight.w400,  
                      ),
                      ),
                ],
              ),
            ),
                 ),
                 Padding(
                  padding: const EdgeInsets.only(top: 2,left: 150),
                  child:ImageIcon(
                      AssetImage("assets/images/expn.png"),
                      size:60,
                      color:Colors.black,
                      ),
                ),
              ],
            ),
          ),
           SizedBox(height: 120,),
           Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  color: Color(0xFF77ABA2),
                  height: 160,
                  // width: 150,
                ),
                Positioned(
                  child: FloatingActionButton(
                    child: Icon(
                      Icons.add,
                      size:40,
                      color: Colors.black54,
                      ),
                    onPressed: () {
                      print("clicked");
                       Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>NavigationScreen())
                    );
                    },
                    backgroundColor: Color(0xFFEFEFEF),
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