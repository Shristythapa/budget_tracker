import 'package:budget_tracer_practice/accounts/addAccount.dart';
import 'package:budget_tracer_practice/balanceTransfer/balance_transfer_screen.dart';
import 'package:budget_tracer_practice/dashboard/main_dashboard/dashboard_body.dart';
import 'package:budget_tracer_practice/dashboard/main_dashboard/sidebar.dart';
import 'package:budget_tracer_practice/landingpage.dart';
import 'package:budget_tracer_practice/signup.dart';
import 'package:budget_tracer_practice/viewmodels/account_viewmodel.dart';
import 'package:budget_tracer_practice/viewmodels/auth_viewmodel.dart';
import 'package:budget_tracer_practice/viewmodels/global_ui_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:provider/provider.dart';

import 'login.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GlobalUIViewModel()),
        ChangeNotifierProvider(create: (_) => AuthViewModel()),
        ChangeNotifierProvider(create: (_)=> AccViewModel())
      ],
      child: GlobalLoaderOverlay(
        useDefaultLoading: false,
        overlayWidget: Center(child: Image.asset("assets/images/loding.gif", height: 100, width: 100,),),
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
                  "/landingPage": (BuildContext context) => LandingPage(),
                  "/login": (BuildContext context) => loginScreen(),
                  "/signup": (BuildContext context) => RegisterScreen(),
                  "/main_homePage": (BuildContext context) => DashboardBody(),
                  "/side_Bar": (BuildContext context) => sidebar(),
                  "/transfer_Balance": (BuildContext context) => BalanceTransferScreen(),
                  "/add_account":(BuildContext context)=> AddMyAccount(),
                },
                home: AddMyAccount());
          },
        ),
      ),
    );
  }
}
