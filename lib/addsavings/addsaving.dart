import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddAccount extends StatelessWidget {
  const AddAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: addsaving(),
    );
  }
}

class addsaving extends StatefulWidget {
  const addsaving({super.key});

  @override
  State<addsaving> createState() => _addsavingState();
}

class _addsavingState extends State<addsaving> {
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
                "Add Account",
                style: TextStyle(
                  fontWeight: FontWeight.w100,
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
      
      ),
    );
  }
}