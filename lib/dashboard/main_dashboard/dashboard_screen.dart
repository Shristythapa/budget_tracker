import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// import '../../common/custom_box.dart';
import 'dashboard_body.dart';
import 'dashboard_header.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal:14.0),
              child: Column(
                children: [
                  DashboardHeader(),
                  SizedBox(height:60),
                  // DashboardBody(),
                ],
              ),
            ),
            DashboardBody(),
          ],
        ),
        )
    );
  }
}