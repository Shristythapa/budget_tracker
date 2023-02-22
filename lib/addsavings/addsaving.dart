import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/saving_model.dart';
import '../repositories/saving_repository.dart';
import '../view_saving/mysavings.dart';
import '../viewmodels/auth_viewmodel.dart';
import '../viewmodels/global_ui_viewmodel.dart';
import '../viewmodels/saving_viewmodel.dart';

class addsaving extends StatefulWidget {
  const addsaving({super.key});

  @override
  State<addsaving> createState() => _addsavingState();
}

class _addsavingState extends State<addsaving> {
  TextEditingController _accountNameController = new TextEditingController();
  TextEditingController _amountController = new TextEditingController();
  late GlobalUIViewModel _ui;
  late SavingViewModel _savingViewModel;
  late AuthViewModel _authViewModel;

  void addsaving() async {
    _ui.loadState(true);
    var user_id = _authViewModel.user!.uid;
    try {
      final SavingModel data = SavingModel(
        accountname: _accountNameController.text,
        amount: _amountController.text,
        userId: user_id,
      );
      await SavingRepository().addSavings(saving: data);
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Saving added successfully")));
      // Navigator.of(context).pop();
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Error")));
    }
    _ui.loadState(false);
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _ui = Provider.of<GlobalUIViewModel>(context, listen: false);
      _authViewModel = Provider.of<AuthViewModel>(context, listen: false);
      _savingViewModel = Provider.of<SavingViewModel>(context, listen: false);
    });
    super.initState();
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
                      controller: _accountNameController,
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
                      controller: _amountController,
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
                            addsaving();
                          }),
                          child: Text(
                            "Add",
                            style: TextStyle(fontSize: 25),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 41, 97, 87),
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
                          child: Text(
                            "Cancel",
                            style: TextStyle(fontSize: 25),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 41, 97, 87),
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
