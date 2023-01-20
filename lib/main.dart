import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:provider/provider.dart';

import 'income/addIncome/addincome.dart';
import 'login.dart';

import 'package:budget_tracer_practice/login.dart';
import 'package:flutter/material.dart';

import 'expenses/delete_expenses_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBlQN5ARppm8IYF3vCLBcO_fu0cOPP1xeI",
      appId: "1:661428043064:android:37f8aa40dcf76f53e795cd",
      messagingSenderId: "661428043064",
      projectId: "budegttracker",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),

        // initialRoute: "/landingPage",
        // routes: {
        //   "/landingPage":(BuildContext context) => LandingPage(),
        //   "/login":(BuildContext context) => loginScreen(),
        //   "/signup":(BuildContext context) => RegisterScreen(),
        //   "/main_homePage":(BuildContext context) => DashboardScreen(),
        //   "/side_Bar":(BuildContext context) => sidebar(),
        //   "/transfer_Balance":(BuildContext context) => BalanceTransferScreen()

        // },

        home: Income());
  }
}
