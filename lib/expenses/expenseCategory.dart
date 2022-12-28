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

              )),
        ),
      ),
    );
  }
}
