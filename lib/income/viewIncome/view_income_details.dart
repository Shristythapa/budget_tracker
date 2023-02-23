import 'package:budget_tracer_practice/income/viewIncome/view_income_screen.dart';
import 'package:budget_tracer_practice/viewmodels/income_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../../viewmodels/auth_viewmodel.dart';

class income extends StatefulWidget {

  final String title;
  final String rs;
  final String id;
  final String userId;
  final String incomeId;
  const income({super.key,required this.incomeId, required this.id, required this.rs, required this.title, required this.userId});
  @override
  State<income> createState() => _incomeState();
}

class _incomeState extends State<income> {
  TextEditingController amount = new TextEditingController();
  TextEditingController account = new TextEditingController();


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
            onPressed: () {

            }
        )
      ],
    );
  }

  late AuthViewModel _authViewModel;
  late IncomeViewModel _income;
  @override
  void initState() {
    _authViewModel = Provider.of<AuthViewModel>(context, listen: false);
    _income = Provider.of<IncomeViewModel>(context, listen: false);
    account.text = widget.title.toString();
    amount.text = widget.rs.toString();


    super.initState();
  }

  @override
  Widget build(BuildContext context)

  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(248, 133, 191, 180),
        toolbarHeight: MediaQuery.of(context).size.height / 100 * 10,
        leading: IconButton(
            onPressed: (() {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => IncomeScreen()));
            }),
            icon: Icon(Icons.arrow_back)),
        title: Center(
          child: Text(
            "Statements",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
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
                  controller: account,
                  decoration: InputDecoration(

                      border: InputBorder.none)),
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
            //     controller: food,
            //     decoration: InputDecoration(
            //         hintText: "                          2022/02/03",
            //         prefixIcon: Icon(Icons.date_range),
            //         border: InputBorder.none),
            //   ),
            // ),
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
                  controller: amount,
                  decoration: InputDecoration(
                      border: InputBorder.none)),
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
            //       controller: food,
            //       decoration: InputDecoration(
            //           hintText:
            //               "                                     Himalayan Bank",
            //           border: InputBorder.none)),
            // ),
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
            //       controller: food,
            //       decoration: InputDecoration(
            //           hintText: "                                     Salary",
            //           suffixIcon: Icon(Icons.arrow_drop_down),
            //           border: InputBorder.none)),
            // ),
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
                  _income.deleteMyIncome(widget.incomeId,widget.userId).then((value){
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => IncomeScreen()),
                    );
                  });
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
