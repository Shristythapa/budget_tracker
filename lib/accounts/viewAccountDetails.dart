import 'package:budget_tracer_practice/accounts/addListOfAccount.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';



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
  @override
void initState() {
  amount.text = widget.accountAmount.toString();
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
            color: Colors.white,
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
                onPressed: () {},
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
                )),
            ElevatedButton(
                onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Do you sure want to delete?'),
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
                    ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF77ABA2),
                  foregroundColor: Colors.white,
                  padding:
                      EdgeInsets.symmetric(horizontal: 90.0, vertical: 15.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                child: Text(
                  "Delete",
                  style: TextStyle(fontSize: 25),
                )),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}