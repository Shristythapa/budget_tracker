import 'package:budget_tracer_practice/accounts/addAccount.dart';
import 'package:budget_tracer_practice/dashboard/main_dashboard/sidebar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/account_model.dart';
import '../viewmodels/account_viewmodel.dart';
import '../viewmodels/auth_viewmodel.dart';

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
    myAccounts = _accViewModel.getAccount(_authViewModel.user!.uid);

    print(myAccounts);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
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
        body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Column(
            children: [
              Container(
                // color: Colors.white,
                // height: MediaQuery.of(context).size.height / 100 * 57,
            child:  FutureBuilder<List<Account>>(
                  future: myAccounts,
                  builder: (context, snapshot) {
                    if (snapshot.hasData &&
                        snapshot.connectionState == ConnectionState.done) {
                      return ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            return AccountTile(
                              snapshot.data!.elementAt(index).accountId,
                                snapshot.data!.elementAt(index).accountName,
                                snapshot.data!.elementAt(index).balanceAmount);
                          });
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  }),
              ),
            ],
          ),
          Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Container(
                color: Color.fromARGB(248, 133, 191, 180),
                height: MediaQuery.of(context).size.height / 100 * 16,
              ),
              Positioned(
                child: FloatingActionButton(
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
                right: 0,
                left: 0,
                top: -30,
              ),
            ],
          ),
        ]),
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
  Widget build(BuildContext context) {
    return 
       Card(
        color: Color(0xFFEFEFEF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "${widget.accountName}",
              style: TextStyle(
                fontWeight: 
                FontWeight.bold, 
                fontSize: 30,
                color: Colors.black
                ),
            ),
            Text(
              "${widget.accountBalance}",
              style: TextStyle(
                fontWeight: 
              FontWeight.bold,
               fontSize: 30,
               color: Colors.black
               ),
            )
          ],
        ),
      );
    
  }
}
