import 'package:budget_tracer_practice/dashboard/main_dashboard/sidebar.dart';
import 'package:budget_tracer_practice/theme%20Swatcher/userProfile.dart';
import 'package:budget_tracer_practice/viewmodels/auth_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../expenses/viewExpenses/expense_screen.dart';
import '../../income/viewIncome/view_income_screen.dart';
import '../navigation/navigation_body.dart';

class DashboardBody extends StatefulWidget {
  const DashboardBody({super.key});

  @override
  State<DashboardBody> createState() => _DashboardBodyState();
}

class _DashboardBodyState extends State<DashboardBody> {
  late AuthViewModel _authViewModel;
  @override
  void initState() {
    // TODO: implement initState
    _authViewModel = Provider.of<AuthViewModel>(context, listen: false);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthViewModel>(builder: (context, auth, child) {
      print(auth.loggedInUser?.username);
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 3,
            toolbarHeight: MediaQuery.of(context).size.height / 100 * 10,
            leading: IconButton(
              icon: Icon(Icons.person_rounded,
                  color: Color(0xFFA296157), size: 60),
              onPressed: () {
                 Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => userprofile()),
                  );
              },
            ),

            title: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "Hello",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  // SizedBox(
                  //   width: 30,
                  // ),
                  // Text(
                  //  "${_authViewModel.user!.}",
                  //   style: TextStyle(
                  //     fontSize: 25,
                  //     color: Colors.black,
                  //     fontWeight: FontWeight.normal,
                  //   ),
                  // ),
                ],
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => sidebar()),
                  );
                },
                icon: Icon(Icons.menu),
                color: Colors.black,
                iconSize: 40,
              )
            ],
            // iconTheme: IconThemeData(),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 180,
                  ),
                  Card(
                    color: Color(0xFFAEFEFEF),
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.all(15),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(
                        //       horizontal: 12, vertical: 15),
                        //   child: ListTile(
                        //     leading: Text(
                        //       "Balance :",
                        //       style: TextStyle(
                        //         fontWeight: FontWeight.w400,
                        //         fontSize: 22,
                        //       ),
                        //     ),
                        //     trailing: Text(
                        //       "20000",
                        //       style: TextStyle(
                        //         fontWeight: FontWeight.w400,
                        //         fontSize: 22,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                        Navigator.pop(context);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) =>IncomeScreen()));
                    },
                    child: Card(
                      color: Color(0xFFAEFEFEF),
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      margin: EdgeInsets.all(20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 12),
                            child: ListTile(
                              title: Text(
                                "Income",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 22,
                                ),
                              ),
                              // subtitle: Text(
                              //   "20000",
                              //   style: TextStyle(
                              //     fontWeight: FontWeight.w400,
                              //     fontSize: 22,
                              //   ),
                             // ),
                              trailing: ImageIcon(
                                AssetImage("assets/images/income.png"),
                                size: 60,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                        Navigator.pop(context);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => ExpenseScreen()));
                    },
                    child: Card(
                      color: Color(0xFFAEFEFEF),
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      margin: EdgeInsets.all(20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 12),
                            child: ListTile(
                              title: Text(
                                "Expenses",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 22,
                                ),
                              ),
                              // subtitle: Text(
                              //   "20000",
                              //   style: TextStyle(
                              //     fontWeight: FontWeight.w400,
                              //     fontSize: 22,
                              //   ),
                              // ),
                              trailing: ImageIcon(
                                AssetImage("assets/images/expn.png"),
                                size: 60,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  Positioned(
                    child: Container(
                      color: Color(0xFF77ABA2),
                      height: 120,
                    ),
                  ),
                  Positioned(
                    child: FloatingActionButton(
                        child: Icon(
                          Icons.add,
                          size: 40,
                          color: Colors.black54,
                        ),
                        onPressed: () {
                          print("clicked");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      NavigationBodyScreen()));
                        },
                        backgroundColor: Colors.white),
                    right: 0,
                    left: 0,
                    top: -20,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
