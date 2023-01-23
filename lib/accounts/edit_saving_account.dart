import 'package:flutter/material.dart';

import '../common/custom_button.dart';
import '../common/custom_textfield.dart';

class EditAccountScreen extends StatefulWidget {
  const EditAccountScreen({super.key});

  @override
  State<EditAccountScreen> createState() => _EditAccountScreenState();
}

class _EditAccountScreenState extends State<EditAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color(0xFFD9D9D9),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            )),
            backgroundColor: Color(0xFF296157),
            title: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                "Edit Account",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Color.fromARGB(255, 37, 37, 37),
                  fontSize: 25,
                ),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Icon(
                  Icons.cancel_outlined,
                  color: Color.fromARGB(255, 37, 37, 37),
                  size: 33,
                ),
              ),
              Text("       ")
            ],
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color(0xFFD9D9D9),
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Form(
                child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 600),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 100 * 8,
                      width: MediaQuery.of(context).size.width / 100 * 8,
                    ),
                    CustomTextField(hintText: "Account"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 100 * 8,
                      width: MediaQuery.of(context).size.width / 100 * 8,
                    ),
                    CustomTextField(hintText: "Balance"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 100 * 8,
                      width: MediaQuery.of(context).size.width / 100 * 8,
                    ),
                    CustomButton(title: "Update")
                  ],
                ),
              ),
            )),
          ),
        ),
      ),
    );
  }
}
