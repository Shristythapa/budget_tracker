import 'package:budget_tracer_practice/balanceTransfer/balance_transfer_screen.dart';
import 'package:budget_tracer_practice/category/bottom_navigation.dart';
import 'package:budget_tracer_practice/dashboard/main_dashboard/dashboard_screen.dart';
import 'package:budget_tracer_practice/dashboard/main_dashboard/sidebar.dart';
import 'package:budget_tracer_practice/landingpage.dart';
import 'package:budget_tracer_practice/signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'login.dart';

import 'package:budget_tracer_practice/expenses/viewExpenses/expense_screen.dart';
import 'package:budget_tracer_practice/login.dart';
import 'package:flutter/material.dart';

import 'expenses/delete_expenses_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
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
        //   "/landingPage": (BuildContext context) => LandingPage(),
        //   "/login": (BuildContext context) => loginScreen(),
        //   "/signup": (BuildContext context) => RegisterScreen(),
        //   "/main_homePage": (BuildContext context) => DashboardScreen(),
        //   "/side_Bar": (BuildContext context) => sidebar(),
        //   "/transfer_Balance": (BuildContext context) =>
        //       BalanceTransferScreen(),
        // },
        home: CustomBottomNavigation(selected: true));
  }
}
