import 'package:budget_tracer_practice/viewmodels/category_viewmodel.dart';
import 'package:budget_tracer_practice/viewmodels/income_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:provider/provider.dart';

import 'accounts/addAccount.dart';
import 'accounts/addListOfAccount.dart';
import 'balanceTransfer/balance_transfer_screen.dart';
import 'dashboard/main_dashboard/dashboard_body.dart';
import 'dashboard/main_dashboard/sidebar.dart';
import 'expenses/addExpenses.dart';
import 'income/addIncome/addincome.dart';
import 'landingpage.dart';
import 'login.dart';
import 'signup.dart';
import 'viewmodels/account_viewmodel.dart';
import 'viewmodels/auth_viewmodel.dart';
import 'viewmodels/global_ui_viewmodel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GlobalUIViewModel()),
        ChangeNotifierProvider(create: (_) => AuthViewModel()),
        ChangeNotifierProvider(create: (_) => AccViewModel()),
        ChangeNotifierProvider(create: (_) => CategoryViewModel()),
        ChangeNotifierProvider(create: (_) => IncomeViewModel()),
      ],
      child: GlobalLoaderOverlay(
        useDefaultLoading: false,
        overlayWidget: Center(
          child: Image.asset(
            "assets/images/loding.gif",
            height: 100,
            width: 100,
          ),
        ),
        child: Consumer<GlobalUIViewModel>(
          builder: (context, loader, child) {
            if (loader.isLoading) {
              context.loaderOverlay.show();
            } else {
              context.loaderOverlay.hide();
            }
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(),
              initialRoute: "/landingPage",
              routes: {
                "/landingPage": (BuildContext context) => MyLandingPage(),
                "/login": (BuildContext context) => loginScreen(),
                "/signup": (BuildContext context) => RegisterScreen(),
                "/main_homePage": (BuildContext context) => DashboardBody(),
                "/side_Bar": (BuildContext context) => sidebar(),
                "/transfer_Balance": (BuildContext context) =>
                    BalanceTransferScreen(),
                "/listOfAccount": (BuildContext context) => AddListOfAccount(),
                "/add_account": (BuildContext context) => AddMyAccount(),
                "/add_expense": (BuildContext context) => Expense(),
                "/add_income": (BuildContext context) => AddIncome(),
                "/dashboard": (BuildContext context) => DashboardBody(),
              },
            );
          },
        ),
      ),
    );
  }
}
