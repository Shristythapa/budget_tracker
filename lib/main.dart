import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:budget_tracker/theme%20Swatcher/theme_service.dart';
import 'package:budget_tracker/theme%20Swatcher/userProfile.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final themeService = await ThemeService.instance;
  var initTheme = themeService.initial;
  runApp(MyApp(theme: initTheme));
}

class MyApp extends StatelessWidget {
  MyApp({required this.theme});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      initTheme: theme,
      builder: (_, theme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: userprofile(),
        );
      },
    );
  }
}
