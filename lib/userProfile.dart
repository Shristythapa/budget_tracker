import 'package:budget_tracker/alert_dialogbox.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF296157),
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
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 100 * 50,
                height: MediaQuery.of(context).size.height / 100 * 40,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.white,
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
                          image: AssetImage("assets/images/profile.jpg1.jpg"),
                        ),
                      ),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width / 60 * 20,
                      height: MediaQuery.of(context).size.height / 100 * 6,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
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
                      width: MediaQuery.of(context).size.width / 110 * 20,
                      height: MediaQuery.of(context).size.height / 100 * 5,
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: TextButton(
                          onPressed: () async{
                            final action = await AlertDialogs.yesCancelDialog(context, 'Logout', 'Are you sure want to logout?');
                            if (action == DialogsAction.yes) {
                              
                              
                              
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
          Padding(
            padding: EdgeInsets.only(bottom: 270, left: 184),
            child: CircleAvatar(
              backgroundColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
