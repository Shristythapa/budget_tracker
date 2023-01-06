import 'package:budget_tracer_practice/landingpage.dart';
import 'package:budget_tracer_practice/signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: "/landingPage",
        routes: {
          "/landingPage":(BuildContext context) => LandingPage(),
          "/login":(BuildContext context) => loginScreen(),
          "/signup":(BuildContext context) => RegisterScreen()
        },
        home: loginScreen());
  }
}

