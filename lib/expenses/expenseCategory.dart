import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpenseCatogery extends StatefulWidget {
  const ExpenseCatogery({Key? key}) : super(key: key);

  @override
  State<ExpenseCatogery> createState() => _ExpenseCatogeryState();
}

class _ExpenseCatogeryState extends State<ExpenseCatogery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.close,
                        size: 30,
                        color: Colors.black87,
                      )),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 100 * 3),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Choose Expense Category",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF4F4F4F),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 100 * 5,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    margin: EdgeInsets.all(10),
                    elevation: 8,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        primary: Color(0XFFD9D9D9),
                        onPrimary: Colors.black87,
                        padding: EdgeInsets.all(25),
                      ),
                      child: Text(
                        'School fees',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(10),
                    elevation: 8,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        primary: Color(0XFFD9D9D9),
                        onPrimary: Colors.black87,
                        padding: EdgeInsets.all(25),
                      ),
                      child: Text(
                        'Fuel',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 100 * 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    margin: EdgeInsets.all(10),
                    elevation: 8,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        primary: Color(0XFFD9D9D9),
                        onPrimary: Colors.black87,
                        padding: EdgeInsets.all(25),
                      ),
                      child: Text(
                        'Goseries',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  // SizedBox(
                  //   height: 100,
                  //   width: 50,
                  // ),
                  Card(
                    margin: EdgeInsets.all(10),
                    elevation: 8,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        primary: Color(0XFFD9D9D9),
                        onPrimary: Colors.black87,
                        padding: EdgeInsets.all(25),
                      ),
                      child: Text(
                        'Clothings',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 100 * 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    margin: EdgeInsets.all(10),
                    elevation: 8,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        primary: Color(0XFFD9D9D9),
                        onPrimary: Colors.black87,
                        padding: EdgeInsets.all(25),
                      ),
                      child: Text(
                        'Medicines',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  // SizedBox(
                  //   height: 100,
                  //   width: 50,
                  // ),
                  Card(
                    margin: EdgeInsets.all(10),
                    elevation: 8,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        primary: Color(0XFFD9D9D9),
                        onPrimary: Colors.black87,
                        padding: EdgeInsets.all(25),
                      ),
                      child: Text(
                        'Gift',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 100 * 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    margin: EdgeInsets.all(10),
                    elevation: 8,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        primary: Color(0XFFD9D9D9),
                        onPrimary: Colors.black87,
                        padding: EdgeInsets.all(25),
                      ),
                      child: Text(
                        'Stationary',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  // SizedBox(
                  //   height: 100,
                  //   width: 50,
                  // ),
                  Card(
                    margin: EdgeInsets.all(10),
                    elevation: 8,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        primary: Color(0XFFD9D9D9),
                        onPrimary: Colors.black87,
                        padding: EdgeInsets.all(25),
                      ),
                      child: Text(
                        'House Rent',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
<<<<<<< Updated upstream
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 100 * 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        margin: EdgeInsets.all(10),
                        elevation: 8,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(150, 50),
                            primary: Color(0XFFD9D9D9),
                            onPrimary: Colors.black87,
                            padding: EdgeInsets.all(25),
                          ),
                          child: Text(
                            'Travel',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {},
                        ),
                      ),

                      Card(
                        margin: EdgeInsets.all(10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(140, 30),
                            primary: Colors.white,
                          ),
                          child: FloatingActionButton(
                            child:Icon(Icons.add,
                              size: 40,color: Colors.black87,),
                            tooltip: "Add Category",
                            backgroundColor: Color(0XFFF6F6F6),
                            onPressed: (){

                            },
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              )),
=======
                ],
              ),
            ],
          )),
>>>>>>> Stashed changes
        ),
      ),
    );
  }
}
