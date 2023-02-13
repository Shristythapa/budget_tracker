
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../dashboard/main_dashboard/sidebar.dart';
import '../model/account_model.dart';
import '../viewmodels/account_viewmodel.dart';
import '../viewmodels/auth_viewmodel.dart';
import 'addAccount.dart';
import 'viewAccountDetails.dart';

class AddListOfAccount extends StatefulWidget {
  const AddListOfAccount({Key? key}) : super(key: key);

  @override
  State<AddListOfAccount> createState() => _addListOfAccountState();
}

class _addListOfAccountState extends State<AddListOfAccount> {
  late AccViewModel _accViewModel;
  late AuthViewModel _authViewModel;
  late Future<List<Account>> myAccounts;
  @override
  void initState() {
    // TODO: implement initState
    _authViewModel = Provider.of<AuthViewModel>(context, listen: false);
    _accViewModel = Provider.of<AccViewModel>(context, listen: false);
    
    try{

    _accViewModel.getAccount(_authViewModel.user!.uid); 
    }catch(e){
      print("ERROR $e");
    }
  
    super.initState();
  }
 

  @override
  Widget build(BuildContext context) {
    
      return  Consumer<AccViewModel>(
      builder: (context, taskVM, child) {
        print(taskVM.allAccount);
        return Scaffold(
          appBar: AppBar(
            // shape: const RoundedRectangleBorder(
            //     borderRadius: BorderRadius.vertical(
            //   bottom: Radius.circular(20),
            // )),
            backgroundColor: Color.fromARGB(248, 133, 191, 180),
            toolbarHeight: MediaQuery.of(context).size.height / 100 * 10,
            leading: IconButton(
                onPressed: (() {
                  Navigator.pop(context);
                  // Navigator.of(context).pushReplacementNamed("/side_Bar");
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => sidebar()));
                }),
                icon: Icon(Icons.arrow_back)),
            title: Center(
              child: Text(
                "My Accounts",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          body: 
          
                Container(
                  padding: EdgeInsets.all(20),
                  // color: Colors.white,
                  // height: MediaQuery.of(context).size.height / 100 * 57,
              child:  ListView(
                shrinkWrap: true,
                children: [
              ...taskVM.allAccount.map((e) => AccountTile(e.accountId,e.accountName, e.balanceAmount))
            ],),
                ),
             
           floatingActionButton: FloatingActionButton(
                    child: Icon(Icons.add, color: Color.fromARGB(248, 76, 120, 112), size: 30),
                    tooltip: "Add ",
                    onPressed: () {
                      Navigator.pop(context);
                      // Navigator.of(context).pushReplacementNamed("/add_account");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddMyAccount()),
                      );
                    },
                    backgroundColor: Colors.white,
                  ),
                 
         
        );
      }
      );
  
      
  }
}

class AccountTile extends StatefulWidget {
  final int accountBalance;
  final String accountName;
  final String accountId;
  AccountTile(this.accountId, this.accountName, this.accountBalance);

  @override
  State<AccountTile> createState() => _AccountTileState();
}

class _AccountTileState extends State<AccountTile> {
  @override
  void initState() {
   print(widget.accountId);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return 
       GestureDetector(
         child: Card(
          color: Color(0xFFEFEFEF),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
             
              children: [
                Text(
                  
                  "${widget.accountName}:  ",
                  style: TextStyle(
                  
                   fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.black
                    ),
                ),
                Text(
                  "  ${widget.accountBalance}",
                  style: TextStyle(
                 
                   fontSize: 20,
                   color: Colors.black
                   ),
                )
              ],
            ),
          ),
             ),
             onTap: (() {
               Navigator.pop(context);
                      // Navigator.of(context).pushReplacementNamed("/add_account");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  MyAccountDetails(widget.accountId,widget.accountName,widget.accountBalance)),
                      );
             }),
       );
    
  }
}
