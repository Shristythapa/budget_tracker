
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:budget_tracer_practice/dashboard/main_dashboard/dashboard_body.dart';
import 'package:budget_tracer_practice/dashboard/main_dashboard/sidebar.dart';
import 'package:budget_tracer_practice/landingpage.dart';
import 'package:budget_tracer_practice/signup.dart';
import 'package:budget_tracer_practice/theme%20Swatcher/theme_service.dart';
import 'package:budget_tracer_practice/viewmodels/auth_viewmodel.dart';
import 'package:budget_tracer_practice/viewmodels/global_ui_viewmodel.dart';


import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:provider/provider.dart';
import 'balanceTransfer/balance_transfer_screen.dart';
import 'login.dart';
import 'expenses/delete_expenses_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final themeService = await ThemeService.instance;
  var initTheme = themeService.initial;
  await Firebase.initializeApp();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBlQN5ARppm8IYF3vCLBcO_fu0cOPP1xeI",
      appId: "1:661428043064:android:37f8aa40dcf76f53e795cd",
      messagingSenderId: "661428043064",
      projectId: "budegttracker",
    ),
  );
  runApp(MyApp(theme: initTheme));
}

class MyApp extends StatelessWidget {
  const MyApp({required this.theme});

  final ThemeData theme;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GlobalUIViewModel()),
        ChangeNotifierProvider(create: (_) => AuthViewModel()),
      ],
      child: GlobalLoaderOverlay(
        useDefaultLoading: false,
        overlayWidget: Center(),
        child: Consumer<GlobalUIViewModel>(
          builder: (context, loader, child) {
            if (loader.isLoading) {
              context.loaderOverlay.show();
            } else {
              context.loaderOverlay.hide();
            }
            return ThemeProvider(
                initTheme: theme,
                builder: (_, theme) {
                  return MaterialApp(
                      theme: theme,
                      debugShowCheckedModeBanner: false,
                      title: 'Flutter Demo',
                      initialRoute: "/landingPage",
                      routes: {
                        "/landingPage": (BuildContext context) => LandingPage(),
                        "/login": (BuildContext context) => loginScreen(),
                        "/signup": (BuildContext context) => RegisterScreen(),
                        "/main_homePage": (BuildContext context) =>
                            DashboardBody(),
                        "/side_Bar": (BuildContext context) => sidebar(),
                        "/transfer_Balance": (BuildContext context) =>
                            BalanceTransferScreen()
                      },
                      home: DeleteExpensesScreen());
                }
            );
          },
        ),
      ),
    );
  }
}