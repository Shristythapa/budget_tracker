import 'package:budget_tracer_practice/addsavings/addsaving.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../dashboard/main_dashboard/sidebar.dart';

class AddListOfSavings extends StatefulWidget {
  const AddListOfSavings({Key? key}) : super(key: key);

  @override
  State<AddListOfSavings> createState() => _addListOfSavingsState();
}

class _addListOfSavingsState extends State<AddListOfSavings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor:  Color.fromARGB(248, 133, 191, 180),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.cancel_outlined),
              tooltip: 'Cancel',
              color: Colors.black87, onPressed: () { 
                 Navigator.pop(context);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => sidebar()),
                                        
                                  );
               },
               
              
          )
        ],
        toolbarHeight: MediaQuery.of(context).size.height / 100 * 15,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "My Savings",
                  style: TextStyle(
                    fontSize: 25,
                  
                    color: Colors.black87,
                  ),
                ),
               
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height / 100 * 7,
          ),
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height / 100 * 57,
            child: Container(
              child: ListView(
                children: [
                    account()
                ],
              ),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.vertical(
                    top: Radius.circular(30),
                  )),
            ),
          ),
          Expanded(child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Container(
                color: Color.fromARGB(248, 133, 191, 180),
                height: MediaQuery.of(context).size.height / 100 * 16,
              ),
              Positioned(
                child: FloatingActionButton(
                  child: Icon(Icons.add,color: Colors.black, size: 30),
                  tooltip: "Add ",
                  onPressed: () {
                       Navigator.pop(context);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => addsaving()),
                                  );
                    
                  },
                  backgroundColor: Colors.white,
                ),
                right: 0,
                left: 0,
                top: -30,
              ),
            ],
          ),)
        ],
      ),
    );
  }
}

Widget account(){
  return SizedBox(
    height: 90,
    width: 90,
    child: Card(
      
      color: Color(0xFFEFEFEF),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("For travel",style: TextStyle( fontSize: 25),),
          Text("2020000",style: TextStyle( fontSize: 15),)
        ],
      ),
    ),
  );
}