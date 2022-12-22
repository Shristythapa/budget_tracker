import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_class/screens/homescreen.dart';

class Expense extends StatefulWidget {
  Expense({super.key});

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController date = new TextEditingController();
  bool hideAmount = true;
  final form = GlobalKey<FormState>();
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void> Add() async {
    // try{
    //   final user = (await _auth.signInWithEmailAndPassword(
    //       email: email.text,
    //       password: password.text)
    //   ).user;
    //   if(user!=null){
    //     ScaffoldMessenger.of(context).showSnackBar(
    //         SnackBar(
    //             backgroundColor: Colors.green,
    //             content: Text("Login Success"))
    //     );

    //     Navigator.of(context).pushReplacementNamed("/home");
    //   }
    // }catch(e){
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(content: Text(e.toString()))
    //   );
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 252, 252),
      body: Form(
        key: form,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(
            //   // "assets/images/logo.png",
            //   height: 100,
            //   width: 100,
            // ),
            const SizedBox(
              height: 20,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Add Expense",
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold,
                          ))
                    ])),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                controller: email,
                validator: (String? value) {
                  if (value == null || value == "") {
                    return "Title is required";
                  }

                  return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    hintText: "Title",
                    prefixIcon: Icon(Icons.description)),
              ),
            ),

            const SizedBox(
              height: 100,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                controller: password,
                validator: (String? value) {
                  if (value == null || value == "") {
                    return "Amount is required";
                  }
                  return null;
                },
                obscureText: hideAmount,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    hintText: "Amount",
                    prefixIcon: Icon(Icons.monetization_on),
                    suffixIcon: !hideAmount
                        ? InkWell(
                            onTap: () {
                              setState(() {
                                hideAmount = !hideAmount;
                              });
                            },
                            child: Icon(Icons.visibility))
                        : InkWell(
                            onTap: () {
                              setState(() {
                                hideAmount = !hideAmount;
                              });
                            },
                            child: Icon(Icons.visibility_off))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
