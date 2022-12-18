import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../dashboard_header.dart';
import 'navigation_body.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14.0),
            child: Column(
              children: [
                DashboardHeader(),
                SizedBox(height: 90),
              ],
            ),
          ),
          NavigationBodyScreen(),
        ],
      ),
    ));
  }
}
