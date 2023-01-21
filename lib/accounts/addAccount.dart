import 'package:budget_tracer_practice/model/account_model.dart';
import 'package:budget_tracer_practice/viewmodels/account_viewmodel.dart';
import 'package:budget_tracer_practice/viewmodels/auth_viewmodel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../viewmodels/global_ui_viewmodel.dart';



class AddMyAccount extends StatefulWidget {
  const AddMyAccount({super.key});

  @override
  State<AddMyAccount> createState() => _AddMyAccountState();
}

class _AddMyAccountState extends State<AddMyAccount> {

  TextEditingController accountName = TextEditingController();
  TextEditingController accountAmount = TextEditingController();

  AuthViewModel u = new AuthViewModel();
    
   late GlobalUIViewModel _ui;
  late AuthViewModel _auth;
  late AccViewModel _acc;
  @override
  void initState() {
    _ui = Provider.of<GlobalUIViewModel>(context, listen: false);
    _auth = Provider.of<AuthViewModel>(context, listen: false);
    _acc = Provider.of<AccViewModel>(context, listen: false);
    super.initState();
  }
  Future<void> addAccount() async{
    _ui.loadState(true);
   var user_id = _auth.user!.uid;
    try{
      await _acc.addAccount(
        Account(
          userId: "12",
          accountName: accountAmount.text,
          balanceAmount: int.parse(accountAmount.text)
          )
      ).then((value) => null).catchError((e){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message.toString())));
      });
    }catch(err){
       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(err.toString())));
    }
     _ui.loadState(false);

  }
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
                      controller: accountName,
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
                      controller: accountAmount,
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
                          onPressed: (() {
                            addAccount();
                          }),
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
