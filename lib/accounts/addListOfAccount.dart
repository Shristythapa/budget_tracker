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
    myAccounts = _accViewModel.getAccount();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        )),
        backgroundColor: Color.fromARGB(248, 133, 191, 180),
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.cancel_outlined,
                size: 32,
              ),
              tooltip: 'Cancel',
              color: Colors.black87,
              onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Do you sure want to quit?'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {},
                          child: const Text('No'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Yes'),
                        ),
                      ],
                    ),
                  ))
        ],
        toolbarHeight: MediaQuery.of(context).size.height / 100 * 20,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "My Accounts",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height / 100 * 57,
            child: Container(
              ///begining of list
              child: FutureBuilder<List<Account>>(
                  future: myAccounts,
                  builder: (context, snapshot) {
                    if (snapshot.hasData &&
                        snapshot.connectionState == ConnectionState.done) {
                      return ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            return AccountTile(
                                snapshot.data!.elementAt(index).accountName,
                                snapshot.data!.elementAt(index).balanceAmount);
                          });
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  }),

              ///end of list
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.vertical(
                    top: Radius.circular(30),
                  )),
            ),
          ),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  color: Color.fromARGB(248, 133, 191, 180),
                  height: MediaQuery.of(context).size.height / 100 * 16,
                ),
                Positioned(
                  child: FloatingActionButton(
                    child: Icon(Icons.add, color: Colors.black, size: 30),
                    tooltip: "Add ",
                    onPressed: () {},
                    backgroundColor: Colors.white,
                  ),
                  right: 0,
                  left: 0,
                  top: -30,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AccountTile extends StatefulWidget {
  final int accountBalance;
  final String accountName;
  AccountTile(this.accountName, this.accountBalance);

  @override
  State<AccountTile> createState() => _AccountTileState();
}

class _AccountTileState extends State<AccountTile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Card(
        color: Color(0xFFEFEFEF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "${widget.accountName}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              "${widget.accountBalance}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
