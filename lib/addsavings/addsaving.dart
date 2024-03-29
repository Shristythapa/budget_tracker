import 'package:budget_tracer_practice/view_saving/mysavings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class addsaving extends StatefulWidget {
  const addsaving({super.key});

  @override
  State<addsaving> createState() => _addsavingState();
}

class _addsavingState extends State<addsaving> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color(0xFFD9D9D9),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            )),
            backgroundColor: Color(0xFF77ABA2),
            title: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                "Add Account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ),
          
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color:Colors.white,
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Form(
                child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 600),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 100 * 8,
                      width: MediaQuery.of(context).size.width / 100 * 8,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: "Account Name",
                          hintStyle: TextStyle(color: Colors.black),
                          fillColor: Colors.white),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 100 * 8,
                      width: MediaQuery.of(context).size.width / 100 * 8,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: "Balance Amount",
                          hintStyle: TextStyle(color: Colors.black),
                          fillColor: Colors.white),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 100 * 8,
                      width: MediaQuery.of(context).size.width / 100 * 8,
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      child: ElevatedButton(
                          onPressed: (() {}),
                          child: Text("Add", style: TextStyle(
                            fontSize: 25
                          ),),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:Color(0xFF77ABA2),
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 100 * 8,
                      width: MediaQuery.of(context).size.width / 100 * 8,
                    ),
                    Container(
                       height: 50,
                      width: 300,
                      child: ElevatedButton(
                          onPressed: (() {
                            
                              Navigator.pop(context);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AddListOfSavings()),
                                  );
                          }),
                          child: Text("Cancel",style: TextStyle(fontSize: 25),),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:Color(0xFF77ABA2),
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                    )
                  ],
                ),
              ),
            )),
          ),
        ),
      ),
    );
  }
}