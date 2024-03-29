import 'dart:async';
import 'package:budget_tracer_practice/signup.dart';
import 'package:budget_tracer_practice/viewmodels/auth_viewmodel.dart';
import 'package:budget_tracer_practice/viewmodels/global_ui_viewmodel.dart';
import 'package:control_style/decorated_input_border.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'common/custom_button.dart';
import 'common/custom_textfield.dart';
import 'dashboard/main_dashboard/dashboard_body.dart';
import 'forgot_password/forgot_password_screen.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<loginScreen> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  bool showPassword = false;
  final form = GlobalKey<FormState>();
 void login() async{
    _ui.loadState(true);
    try{
      print("EMAIL TEXT :: "+email.text);
      await _auth.login(email.text, password.text).then((value){
         Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DashboardBody()),
              );
      })
          .catchError((e){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message.toString())));
      });
    }catch(err){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(err.toString())));
    }
    _ui.loadState(false);
  }

  late GlobalUIViewModel _ui;
  late AuthViewModel _auth;
  @override
  void initState() {
    _ui = Provider.of<GlobalUIViewModel>(context, listen: false);
    _auth = Provider.of<AuthViewModel>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
          padding: EdgeInsets.symmetric(horizontal: 14),
          child: Form(
            key: form,
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                      top: 60.0,
                      bottom: 50,
                    ),
                    child: Column(children: <Widget>[
                      Text("Hello there, \nWelcome back",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            // color: Color.fromARGB(255, 247, 245, 245),
                          ))
                    ])),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 70,
                  child: CustomTextField(
                    controller: email,
                    hintText: "Email address",
                    prefixIcon: Icon(Icons.email),
                    bottomPadding: 30,
                    validator: (val) {
                      final emailValid = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                      if (val == null) {
                        return "Email field cannot be empty";
                      } else if (val.isEmpty) {
                        return "Email field cannot be empty";
                      } else if (emailValid.hasMatch(val)) {
                        return null;
                      } else {
                        return "Invalid email address";
                      }
                    },
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 70,
                  child: TextFormField(
                    controller: password,
                    obscureText: !showPassword,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return "Password cannot be empty";
                      } else if (val.length < 6) {
                        return "Password must be at least 6 characters";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      border: DecoratedInputBorder(
                        child: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        shadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 174, 175, 175),
                            blurRadius: 12,
                          )
                        ],
                      ),
                      hintText: " Password",
                      hintStyle: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 194, 193, 193)),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: showPassword
                          ? InkWell(
                              onTap: () {
                                setState(() {
                                  showPassword = !showPassword;
                                });
                              },
                              child: Icon(Icons.panorama_fish_eye))
                          : InkWell(
                              onTap: () {
                                setState(() {
                                  showPassword = !showPassword;
                                });
                              },
                              child: Icon(Icons.remove_red_eye)),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 13,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPasswordScreen()));
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.pink),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                CustomButton(
                  title: "Login",
                  onPressed: (() {
                    if (form.currentState!.validate()) {
                      print("Log");
                        login();
                    } else {
                      print("Fail");
                    }
                  }),
                ),
                SizedBox(
                  height: 30.0,
                ),
                CustomButton(
                  title: "Register",
                  onPressed: () {
                     Navigator.of(context).pop();
                Navigator.pushNamed(context, '/signup');  
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
