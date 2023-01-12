import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class food extends StatefulWidget {
  const food({super.key});

  @override
  State<food> createState() => _foodState();
}

class _foodState extends State<food> {
  TextEditingController food = new TextEditingController();
  TextEditingController date = new TextEditingController();
  final form = GlobalKey<FormState>();
  Future<bool?> showWarning(BuildContext context) async {
    context:
    context;
    builder:
    (context) => AlertDialog(
          title: Text("Do you want to delete?"),
          actions: [
            ElevatedButton(
              child: Text('No'),
              onPressed: () => Navigator.pop(context, false),
            ),
            ElevatedButton(
              child: Text('Yes'),
              onPressed: () => Navigator.pop(context, true),
            )
          ],
        );
  }

  @override
  Widget build(BuildContext context)
  // => WillPopScope(
  //   onWillPop: ()async {
  //   print("Items Deleted");
  //   final shouldPop = await showWarning(context);
  //   return shouldPop ?? false;

  // },
  //  );
  {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 251, 251),
      body: Form(
        key: form,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(
            //   // "assets/images/logo.png",
            //   height: 100,
            //   width: 100,
            // ),
            const SizedBox(
              height: 20,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Statements",
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 20, 20, 20),
                            fontWeight: FontWeight.bold,
                          ))
                    ])),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 225, 223, 223),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              margin: EdgeInsets.all(8),
              child: TextFormField(
                  controller: food,
                  decoration: InputDecoration(
                      hintText:
                          "                                     Food for Week",
                      border: InputBorder.none)),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 225, 223, 223),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              margin: EdgeInsets.all(10),
              child: TextFormField(
                controller: food,
                decoration: InputDecoration(
                    hintText: "                          2022/02/03",
                    prefixIcon: Icon(Icons.date_range),
                    border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 225, 223, 223),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              margin: EdgeInsets.all(8),
              child: TextFormField(
                  controller: food,
                  decoration: InputDecoration(
                      hintText: "                                       20000",
                      border: InputBorder.none)),
            ),
            const SizedBox(
              height: 40,
              width: 100,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 225, 223, 223),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              margin: EdgeInsets.all(8),
              child: TextFormField(
                  controller: food,
                  decoration: InputDecoration(
                      hintText:
                          "                                     Himalayan Bank",
                      border: InputBorder.none)),
            ),
            const SizedBox(
              height: 40,
              width: 100,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 225, 223, 223),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              margin: EdgeInsets.all(8),
              child: TextFormField(
                  controller: food,
                  decoration: InputDecoration(
                      hintText: "                                     food",
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      border: InputBorder.none)),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 50,
              width: 300,
              margin: EdgeInsets.symmetric(horizontal: 60),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromRGBO(49, 39, 79, 1),
              ),
              child: ElevatedButton(
                onPressed: (() {
                  //   if (form.currentState!.validate()) {
                  //     Delete();
                  //   } else {
                  //     print("");
                  //   }
                }),
                child: Text(
                  "Delete",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  backgroundColor: Color.fromARGB(255, 119, 171, 162),
                  foregroundColor: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 50,
              width: 300,
              margin: EdgeInsets.symmetric(horizontal: 60),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromRGBO(49, 39, 79, 1),
              ),
              child: ElevatedButton(
                onPressed: (() {
                  //   if (form.currentState!.validate()) {
                  //     Delete();
                  //   } else {
                  //     print("");
                  //   }
                }),
                child: Text(
                  "Update",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  backgroundColor: Color.fromARGB(255, 119, 171, 162),
                  foregroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
