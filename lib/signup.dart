
import 'package:budget_tracer_practice/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController userName = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController confirmPassword = new TextEditingController();
  bool showPassword = false;
  bool showPassword2 = false;
  final form = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void> signup() async{
    try{
      final user = (await _auth.createUserWithEmailAndPassword(
          email: email.text,
          password: password.text
      )).user;
      if(user!=null){
        print("User created");
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.green,
              content: Text("Sign-Up Success"),
            ));
        // Navigator.of(context).pushReplacementNamed("/login");
      }
    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString()),));
    }
  }
  @override
  void initState() {
    Firebase.initializeApp().whenComplete(() { 
      print("completed");
      setState(() {});
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white54,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20),
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.white, Colors.white60])),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Form(
              key: form,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello there",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                  ),
                  TextFormField(
                    controller: userName,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'User Name is required';
                      }
                      if (value.trim().length < 4) {
                        return 'Username must be at least 4 characters in length';
                      }
                      // Return null if the entered username is valid
                      return null;
                    },
                    decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide:
                          BorderSide(color: Colors.black87, width: 1.5),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.5,
                          ),
                        ),
                        label: Text("User Name"),
                        hintText: "Please enter your username",
                        prefixIcon: Icon(Icons.person,color: Colors.black87)),
                  ),
                  SizedBox(height: 30.0),
                  TextFormField(
                    controller: email,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Email is required";
                      }
                      if (!RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+.[a-zA-Z]+")
                          .hasMatch(value)) {
                        return "Please enter valid email";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide:
                          BorderSide(color: Colors.black87, width: 1.5),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.5,
                          ),
                        ),
                        label: Text("Email"),
                        hintText: "Please enter your email",
                        prefixIcon: Icon(Icons.email,color: Colors.black87,)),
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    controller: password,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Password is required";
                      }
                      if (value.length < 6 || value.length > 10) {
                        return "Plaese enter a password of 6 to 10 characters";
                      }
                      return null; // null return garyo vane chai pass vako ho
                    },
                    obscureText: !showPassword,
                    decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(color: Colors.black87, width: 1.5),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 1.5,
                        ),
                      ),
                      label: Text("Password"),
                      prefixIcon: Icon(Icons.lock,color: Colors.black87,),
                      hintText: "Please enter your password",
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
                    ),
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    controller: confirmPassword,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Please Re-Enter New Password";
                      } else if (password.text != confirmPassword.text) {
                        return "Password must be same as above";
                      } else {
                        return null; // null return garyo vane chai pass vako ho
                      }
                    },
                    obscureText: !showPassword2,
                    decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(color: Colors.black87, width: 1.5),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 1.5,
                        ),
                      ),
                      label: Text("Confirm Password"),
                      prefixIcon: Icon(Icons.lock,color: Colors.black87,),
                      hintText: "Please re-enter your password",
                      suffixIcon: showPassword2
                          ? InkWell(
                          onTap: () {
                            setState(() {
                              showPassword2 = !showPassword2;
                            });
                          },
                          child: Icon(Icons.panorama_fish_eye))
                          : InkWell(
                          onTap: () {
                            setState(() {
                              showPassword2 = !showPassword2;
                            });
                          },
                          child: Icon(Icons.remove_red_eye)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    minWidth: 1300,
                    height: 60,
                    onPressed: () {
                      if (form.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Login Validation Success"),
                        ));
                        signup();
                        // Navigator.of(context).pushNamed("/dashboard");
                      } else {
                        print("Invalid form");
                      }
                    },
                    color: Color(0xFF296157)
                    ,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text("Already have an account?"),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.push(context,  MaterialPageRoute(builder: (context) => const loginScreen())); 
                            },
                        child: Text(
                          "Go to login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}