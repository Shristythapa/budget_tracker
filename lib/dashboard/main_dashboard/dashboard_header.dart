import 'package:flutter/material.dart';


class DashboardHeader extends StatefulWidget {
  const DashboardHeader({super.key});

  @override
  State<DashboardHeader> createState() => _DashboardHeaderState();
}

class _DashboardHeaderState extends State<DashboardHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(top:MediaQuery.of(context).viewPadding.top),
      child:Row(
        children: [
          Icon(
            Icons.person_rounded,
            color:Color(0xFFA296157),
            size:70
            ),
            SizedBox(width: 20,),
            Expanded(
              flex:2,
              child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
            
                children: [
                  Text(
                    "Hello",
                    style:TextStyle(
                      fontSize:25,
                      fontWeight: FontWeight.normal, 
                    ),
                    ),
                    Text(
                    "There",
                    style:TextStyle(
                      fontSize:25,
                      fontWeight: FontWeight.normal, 
                    ),
                    ),
                ],
              ),
            ),
            // SizedBox(width:15),
                     Icon(
                      Icons.menu_rounded,
                      color:Color(0xFFA296157),
                      size:60
                      ),
        ],
      ),

    );
  }
}