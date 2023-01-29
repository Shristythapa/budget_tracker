import 'package:budget_tracer_practice/dashboard/main_dashboard/sidebar.dart';
import 'package:budget_tracer_practice/viewmodels/auth_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../navigation/navigation_body.dart';

class DashboardBody extends StatefulWidget {
  const DashboardBody({super.key});

  @override
  State<DashboardBody> createState() => _DashboardBodyState();
}

class _DashboardBodyState extends State<DashboardBody> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthViewModel>(
      builder: (context, auth, child) {
        print(auth.loggedInUser?.username);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading:
                Icon(Icons.person_rounded, color: Color(0xFFA296157), size: 60),

            title: Column(
              children: [
                Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "There",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Card(
                color: Color(0xFFAEFEFEF),
                elevation: 6,
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.all(15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                      child: ListTile(
                        leading: Text(
                          "Balance :",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                          ),
                        ),
                        trailing: Text(
                          "20000",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                color: Color(0xFFAEFEFEF),
                elevation: 6,
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      child: ListTile(
                        title: Text(
                          "Income",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                          ),
                        ),
                        subtitle: Text(
                          "20000",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                          ),
                        ),
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
              Card(
                color: Color(0xFFAEFEFEF),
                elevation: 6,
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      child: ListTile(
                        title: Text(
                          "Expenses",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                          ),
                        ),
                        subtitle: Text(
                          "20000",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                          ),
                        ),
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
              SizedBox(height: 20),
              Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  Positioned(
                    child: Container(
                      color: Color(0xFF77ABA2),
                      height: 160,
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
                                builder: (context) => NavigationBodyScreen()));
                      },
                      backgroundColor: Color.fromARGB(255, 155, 148, 148),
                    ),
                    right: 0,
                    left: 0,
                    top: -20,
                  ),
                ],
              ),
            ],
          ),
        );
      }
    );
  }
}
