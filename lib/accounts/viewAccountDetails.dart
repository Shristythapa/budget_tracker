import 'package:budget_tracer_practice/accounts/addListOfAccount.dart';
import 'package:budget_tracer_practice/model/account_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../viewmodels/account_viewmodel.dart';
import '../viewmodels/auth_viewmodel.dart';
import '../viewmodels/global_ui_viewmodel.dart';



class MyAccountDetails extends StatefulWidget {
   
  late String accountName;
  late int accountAmount;
  late String accountId;
  MyAccountDetails(this.accountId,this.accountName,this.accountAmount);

  

  @override
  State<MyAccountDetails> createState() => _MyAccountDetailsState();
}

class _MyAccountDetailsState extends State<MyAccountDetails> {

TextEditingController amount = new TextEditingController();

  AuthViewModel u = new AuthViewModel();
    
   late GlobalUIViewModel _ui;
  late AuthViewModel _auth;
  late AccViewModel _acc;
  
  @override
void initState() {
  _ui = Provider.of<GlobalUIViewModel>(context, listen: false);
    _auth = Provider.of<AuthViewModel>(context, listen: false);
    _acc = Provider.of<AccViewModel>(context, listen: false);
  amount.text = widget.accountAmount.toString();
  print("I am Idddddddddddddddddddddddddddddddddd"+widget.accountId);
  super.initState();
}
@override
void dispose() {
  amount.dispose();
  super.dispose();
}

 
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // Overide the default Back button
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: IconButton(
          onPressed: (){
             Navigator.of(context).pop();
           Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddListOfAccount()),
                      );

          },
          icon: const Icon(
            Icons.arrow_left_sharp,
            color: Color.fromARGB(248, 133, 191, 180),
            size: 40,
          ),
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
        ),

        // other stuff
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "${widget.accountName}",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            TextFormField(
              controller: amount,
              onChanged: (value) {},
              readOnly: false,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
            ),
            ElevatedButton(
                onPressed: () {
                                print("ACCCCCCCCCCCCCCCC::::::::::::::::::"+widget.accountId);
                    _acc.updateAccount(Account(accountId: widget.accountId, userId: _auth.user!.uid, accountName: widget.accountName, balanceAmount: int.parse(amount.text))).then((value) {  Navigator.of(context).pop();
           Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddListOfAccount()));});
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF77ABA2),
                  foregroundColor: Colors.white,
                  padding:
                      EdgeInsets.symmetric(horizontal: 90.0, vertical: 15.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                
                  child: Text(
                    "Update",
                    style: TextStyle(fontSize: 25),
                  ),
                
                ),
            ElevatedButton(
              
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF77ABA2),
                  foregroundColor: Colors.white,
                  padding:
                      EdgeInsets.symmetric(horizontal: 90.0, vertical: 15.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),),
               
                
                  onPressed: () { 
                      _acc.deleteAccount(Account(accountId: widget.accountId, userId: _auth.user!.uid, accountName: widget.accountName, balanceAmount: int.parse(amount.text))).then((value) {
                         Navigator.of(context).pop();
           Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddListOfAccount()),
                      );
                      });
                    
                   },
                  child: Text(
                    "Delete",
                    style: TextStyle(fontSize: 25),
                  ),
                  
                ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}