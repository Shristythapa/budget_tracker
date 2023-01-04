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
                    
          ),
        ),
      ),
    );
  }
}
