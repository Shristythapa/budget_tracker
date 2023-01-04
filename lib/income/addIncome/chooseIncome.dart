import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IncomeCategory extends StatefulWidget {
  const IncomeCategory({Key? key}) : super(key: key);

  @override
  State<IncomeCategory> createState() => _IncomeCategoryState();
}

class _IncomeCategoryState extends State<IncomeCategory> {
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
                      "Choose Income Category",
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
                          'Salary',
                         
          ),
        ),
      ),
    );
  }
}
