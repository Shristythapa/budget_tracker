import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
                  children:[
                    Container(
                      height: 560,
                      decoration: BoxDecoration(
                        color: Color(0xF9296157),
                        borderRadius:BorderRadius.only(
                          topLeft: Radius.circular(70),
                          topRight: Radius.circular(70),
                      )
                      ),
                      
                      // width: 150,
                    ),
                    Positioned(
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
                  padding: const EdgeInsets.only(top: 1,left: 20),
                  child: Icon(
                    Icons.home_filled,
                    size:60,
                  )
                ),
                 Padding(
                  padding: const EdgeInsets.only(top: 10,left: 100),
                  child: Text(
                    "Income",
                    style: TextStyle(
                          fontWeight:FontWeight.w400,
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
                      top: 30,
                    ),

                    // second
                     Positioned(
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
                  padding: const EdgeInsets.only(top: 1,left: 20),
                  child: Icon(
                    Icons.home_filled,
                    size:60,
                  )
                ),
                 Padding(
                  padding: const EdgeInsets.only(top: 10,left: 100),
                  child: Text(
                    "Expenses",
                    style: TextStyle(
                          fontWeight:FontWeight.w400,
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
                      top: 150,
                    ),
                    

                     Positioned(
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
                  padding: const EdgeInsets.only(top: 1,left: 20),
                  child: Icon(
                    Icons.transform_rounded,
                    size:60,
                  )
                ),
                 Padding(
                  padding: const EdgeInsets.only(top: 10,left: 100),
                  child: Text(
                    "Transfer",
                    style: TextStyle(
                          fontWeight:FontWeight.w400,
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
                      top: 270,
                    ),
// button
                    Positioned(
                      child:Column(
                        children: [
                          ElevatedButton(
                             style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFA95894E), // background
                                foregroundColor: Colors.black, // foreground
                              ),
                          child:Padding(
                            padding:  EdgeInsets.only(left:20,right:20,top:10,bottom:10),
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                fontSize:20,
                              )
                              ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        ],
                        ),
                  right: 0,
                  left: 0,
                  top: 400,
                ),
                  ],
                ),
        ],
      ),
    );
  }
}