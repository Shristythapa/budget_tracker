import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddListOfAccount extends StatefulWidget {
  const AddListOfAccount({Key? key}) : super(key: key);

  @override
  State<AddListOfAccount> createState() => _addListOfAccountState();
}

class _addListOfAccountState extends State<AddListOfAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            )),
        backgroundColor: Color(0xFF296157),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.cancel_outlined,size: 32,),
              tooltip: 'Cancel',
              color: Colors.black87,
              onPressed: ()=> showDialog<String>(
                context:context,
                builder:(BuildContext context) => AlertDialog(
                  title: const Text('Do you sure want to quit?'),
                  actions: <Widget>[
                    TextButton(
                      onPressed:(
                          ) {},
                      child: const Text('No'),
                    ),
                    TextButton(
                      onPressed:() {},
                      child: const Text('Yes'),
                    ),
                  ],
                ),
              )
          )
        ],
        toolbarHeight: MediaQuery.of(context).size.height / 100 * 20,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "List Of",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  "Accounts",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height / 100 * 7,
          ),
          Container(
            color: Colors.white70,
            height: MediaQuery.of(context).size.height / 100 * 57,
            child: Container(
              decoration: new BoxDecoration(
                  color: Color(0XFFD9D9D9),
                  borderRadius: new BorderRadius.vertical(
                    top: Radius.circular(30),
                  )),
            ),
          ),
          
        ],
      ),
    );
  }
}
