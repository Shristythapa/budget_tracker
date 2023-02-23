// import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:budget_tracer_practice/login.dart';
import 'package:budget_tracer_practice/theme%20Swatcher/theme_service.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodels/auth_viewmodel.dart';
import 'alert_dialogbox.dart';

class userprofile extends StatefulWidget {
  @override
  State<userprofile> createState() => _userprofileState();
}

class _userprofileState extends State<userprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Profile'),
          actions: [
            // ThemeSwitcher(
            //   builder: (context) {
            //     bool isDarkMode =
            //         ThemeModelInheritedNotifier.of(context).theme.brightness ==
            //             Brightness.light;
            //     String themeName = isDarkMode ? 'dark' : 'light';
            //     return DayNightSwitcherIcon(
            //       isDarkModeEnabled: isDarkMode,
            //       onStateChanged: (bool darkMode) async {
            //         var service = await ThemeService.instance
            //           ..save(darkMode ? 'light' : 'dark');
            //         var theme = service.getByName(themeName);
            //         ThemeSwitcher.of(context)
            //             .changeTheme(theme: theme, isReversed: darkMode);
            //       },
            //     );
            //   },
            // ),
          ] ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "My Profile",
                  style: TextStyle(
                    fontSize: 30,
                    letterSpacing: 1.5,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 100 * 80,
                height: MediaQuery.of(context).size.height / 100 * 50,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    // color: #099D1C8;
                    color:  Color(0xFF099D1C8)
                    // spreadRadius: .5,
                    // blurRadius: 2,
                  ),
                ], borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 5),
                        shape: BoxShape.circle,
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/profile.jpg"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Rebecaa Anderson"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("rebecaa@Anderson"),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width / 60 * 25,
                      height: MediaQuery.of(context).size.height / 100 * 8,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(30)),
                      margin: EdgeInsets.only(right: 40),
                      child: TextButton(
                          onPressed: () {},
                          child: Text("Edit Account",
                              style: TextStyle(
                                  color: Color(0xFF296157),
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)))),
                  Container(
                      width: MediaQuery.of(context).size.width / 110 * 25,
                      height: MediaQuery.of(context).size.height / 100 * 8,
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(30)),
                      child: TextButton(
                          onPressed: () async{
                            final action = await AlertDialogs.yesCancelDialog(context, 'Logout', 'Are you sure want to logout?');
                            if (action == DialogsAction.yes) {
                              FirebaseAuth.instance.signOut();
                              Navigator.push(context, MaterialPageRoute (builder:(context)=>
                              loginScreen()));

                            }
                          },
                          child: Text(
                            "Logout",
                            style: TextStyle(
                                color: Color(0xFF296157),
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ))),
                ],
              )
            ],
          ),
        ],
      ),
    );
//
//     return ThemeSwitchingArea(
//       child: Scaffold(
//         appBar: AppBar(title: const Text('Flutter Dark Mode'), actions: [
//           ThemeSwitcher(
//             builder: (context) {
//               bool isDarkMode =
//                   ThemeModelInheritedNotifier.of(context).theme.brightness ==
//                       Brightness.light;
//               String themeName = isDarkMode ? 'dark' : 'light';
//               return DayNightSwitcherIcon(
//                 isDarkModeEnabled: isDarkMode,
//                 onStateChanged: (bool darkMode) async {
//                   var service = await ThemeService.instance
//                     ..save(darkMode ? 'light' : 'dark');
//                   var theme = service.getByName(themeName);
//                   ThemeSwitcher.of(context)
//                       .changeTheme(theme: theme, isReversed: darkMode);
//                 },
//               );
//             },
//           ),
//         ]),
//         body: Stack(
//           alignment: Alignment.center,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const Padding(
//                   padding: EdgeInsets.all(20),
//                   child: Text(
//                     "My Profile",
//                     style: TextStyle(
//                       fontSize: 30,
//                       letterSpacing: 1.5,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width / 100 * 80,
//                   height: MediaQuery.of(context).size.height / 100 * 50,
//                   padding: EdgeInsets.all(20),
//                   margin: EdgeInsets.all(30),
//                   decoration: BoxDecoration(boxShadow: [
//                     BoxShadow(
//                       color: Colors.lightGreen,
//                       // spreadRadius: .5,
//                       // blurRadius: 2,
//                     ),
//                   ], borderRadius: BorderRadius.circular(30)),
//                   child: Column(
//                     children: [
//                       Container(
//                         padding: EdgeInsets.all(10.0),
//                         width: MediaQuery.of(context).size.width / 3,
//                         height: MediaQuery.of(context).size.width / 3,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Colors.white, width: 5),
//                           shape: BoxShape.circle,
//                           color: Colors.white,
//                           image: DecorationImage(
//                             fit: BoxFit.cover,
//                             image: AssetImage("assets/images/profile.jpg"),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Text("Rebecaa Anderson"),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Text("rebecaa@Anderson"),
//                       SizedBox(
//                         height: 30,
//                       ),
//                     ],
//                   ),
//                 ),
//                 Row(
//                   // crossAxisAlignment: CrossAxisAlignment.,
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Container(
//                         width: MediaQuery.of(context).size.width / 60 * 25,
//                         height: MediaQuery.of(context).size.height / 100 * 8,
//                         padding: EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                             color: Colors.lightBlueAccent,
//                             borderRadius: BorderRadius.circular(30)),
//                         margin: EdgeInsets.only(right: 40),
//                         child: TextButton(
//                             onPressed: () {},
//                             child: Text("Edit Account",
//                                 style: TextStyle(
//                                     color: Color(0xFF296157),
//                                     fontSize: 17,
//                                     fontWeight: FontWeight.bold)))),
//                     Container(
//                         width: MediaQuery.of(context).size.width / 110 * 25,
//                         height: MediaQuery.of(context).size.height / 100 * 8,
//                         padding: EdgeInsets.all(3),
//                         decoration: BoxDecoration(
//                             color: Colors.lightBlueAccent,
//                             borderRadius: BorderRadius.circular(30)),
//                         child: TextButton(
//                             onPressed: () async {
//                               final action = await AlertDialogs.yesCancelDialog(
//                                   context,
//                                   'Logout',
//                                   'Are you sure want to logout?');
//                               if (action == DialogsAction.yes) {}
//                             },
//                             child: Text(
//                               "Logout",
//                               style: TextStyle(
//                                   color: Color(0xFF296157),
//                                   fontSize: 17,
//                                   fontWeight: FontWeight.bold),
//                             ))),
//                   ],
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
  }
}
