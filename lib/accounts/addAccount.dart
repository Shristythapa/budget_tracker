import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddAccount extends StatelessWidget {
  const AddAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddMyAccount(),
    );
  }
}

class AddMyAccount extends StatefulWidget {
  const AddMyAccount({super.key});

  @override
  State<AddMyAccount> createState() => _AddMyAccountState();
}

class _AddMyAccountState extends State<AddMyAccount> {
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
            backgroundColor: Color(0xFF296157),
            title: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                "Add Account",
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  color: Color.fromARGB(255, 37, 37, 37),
                  fontSize: 25,
                ),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Icon(
                  Icons.cancel_outlined,
                  color: Color.fromARGB(255, 37, 37, 37),
                  size: 33,
                ),
              ),
              Text("       ")
            ],
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color(0xFFD9D9D9),
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
                              backgroundColor: Color(0xFF95894E),
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
                          onPressed: (() {}),
                          child: Text("Cancel",style: TextStyle(fontSize: 25),),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF95894E),
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
