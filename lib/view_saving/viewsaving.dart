import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SavingsDetails extends StatefulWidget {
  const SavingsDetails({super.key});

  @override
  State<SavingsDetails> createState() => _SavingsDetailsState();
}

class _SavingsDetailsState extends State<SavingsDetails> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MySavingsDetails(),
    );
  }
}

class MySavingsDetails extends StatelessWidget {
  TextEditingController amount = new TextEditingController(text: "20000");

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
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_left_sharp,
            color: Colors.black,
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
              "For Travel",
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
            
          ],
        ),
      ),
    );
  }
}