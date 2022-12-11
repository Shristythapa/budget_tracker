import 'package:budget_tracker/main.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff21254A),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            child: Stack(
              children: [
                Positioned(
                    child: Container(
                  decoration: const BoxDecoration(
                      // image: DecorationImage(
                      // fit: BoxFit.cover,
                      // image: AssetImage("assests/images/1.jpg"),
                      ),
                ))
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Hello there, \nWelcome back",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ))
                  ])),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.transparent,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Username",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey),
                    ),
                  ),
                  child: TextField(
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Center(
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.pink),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 50,
                  width: 300,
                  margin: EdgeInsets.symmetric(horizontal: 60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromRGBO(49, 39, 79, 1),
                  ),
                  child: ElevatedButton(
                    onPressed: (() {
                      // Navigator.of(context).pop();
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=> const haomepage()))
                    }),
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      backgroundColor: Color.fromRGBO(49, 39, 79, 1),
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Center(
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      color: Colors.pink,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
