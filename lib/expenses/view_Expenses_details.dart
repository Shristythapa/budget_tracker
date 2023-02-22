import 'package:budget_tracer_practice/expenses/viewExpenses/expense_screen.dart';
import 'package:budget_tracer_practice/model/expenses_model.dart';
import 'package:budget_tracer_practice/viewmodels/auth_viewmodel.dart';
import 'package:budget_tracer_practice/viewmodels/expenses_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class expenses extends StatefulWidget {
  final String title;
  final String rs;
  final String id;
  final String userId;
  final String expenseId;

  const expenses({super.key,required this.expenseId, required this.id, required this.rs, required this.title, required this.userId});

  @override
  State<expenses> createState() => _expensesState();
}

class _expensesState extends State<expenses> {
  TextEditingController title = new TextEditingController();
  TextEditingController date = new TextEditingController();
  TextEditingController amount = new TextEditingController();
  TextEditingController account = new TextEditingController();

  late AuthViewModel _authViewModel;
  late ExpensesViewModel _expensesViewModel;
  @override
  void initState() {
    _authViewModel = Provider.of<AuthViewModel>(context, listen: false);
    _expensesViewModel = Provider.of<ExpensesViewModel>(context, listen: false);
    title.text = widget.title.toString();
    amount.text = widget.rs.toString();
  

    super.initState();
  }

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
            ElevatedButton(child: Text('Yes'), onPressed: () {})
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                    controller: title,
                    decoration: InputDecoration(border: InputBorder.none)),
              ),
              SizedBox(
                height: 30,
              ),
              // Container(
              //   decoration: BoxDecoration(
              //     color: Color.fromARGB(255, 225, 223, 223),
              //     borderRadius: BorderRadius.circular(30),
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.grey.withOpacity(0.5),
              //         spreadRadius: 5,
              //         blurRadius: 7,
              //         offset: Offset(0, 3), // changes position of shadow
              //       ),
              //     ],
              //   ),
              //   margin: EdgeInsets.all(10),
              //   child: TextFormField(
              //     controller: date,
              //     decoration: InputDecoration(

              //         prefixIcon: Icon(Icons.date_range),
              //         border: InputBorder.none),
              //   ),
              // ),
              // const SizedBox(
              //   height: 35,
              // ),
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
                    controller: amount,
                    decoration: InputDecoration(border: InputBorder.none)),
              ),
              const SizedBox(
                height: 40,
                width: 100,
              ),
              // Container(
              //   decoration: BoxDecoration(
              //     color: Color.fromARGB(255, 225, 223, 223),
              //     borderRadius: BorderRadius.circular(30),
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.grey.withOpacity(0.5),
              //         spreadRadius: 5,
              //         blurRadius: 7,
              //         offset: Offset(0, 3), // changes position of shadow
              //       ),
              //     ],
              //   ),
              //   margin: EdgeInsets.all(8),
              //   child: TextFormField(
              //       controller: account,
              //       decoration: InputDecoration(border: InputBorder.none)),
              // ),
              const SizedBox(
                height: 40,
                width: 100,
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
                    _expensesViewModel
                        .deleteExpense(widget.id, widget.userId)
                        .then((value) {
                          Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExpenseScreen()),
                      );
                    });
                    Navigator.pop(context);
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
                    _expensesViewModel.updateExpense(widget.expenseId, widget.userId, title.text, amount.text).then((value){
                         Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExpenseScreen()),
                      );
                    });
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
      ),
    );
  }
}
