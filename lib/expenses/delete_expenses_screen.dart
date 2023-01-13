
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DeleteExpensesScreen extends StatefulWidget {
  const DeleteExpensesScreen({super.key});

  @override
  State<DeleteExpensesScreen> createState() => _DeleteExpensesScreenState();
}

class _DeleteExpensesScreenState extends State<DeleteExpensesScreen> {
  @override

  bool _isShown = true;

  void _delete(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (BuildContext ctx) {
          return CupertinoAlertDialog(
            title: const Text('Please Confirm'),
            content: const Text('Are you sure you want to delete this expense?'),
            actions: [
              // The "Yes" button
              CupertinoDialogAction(
                onPressed: () {
                  setState(() {
                    _isShown = false;
                    Navigator.of(context).pop();
                  });
                },
                child: const Text('Yes'),
                isDefaultAction: true,
                isDestructiveAction: true,
              ),
              // The "No" button
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('No'),
                isDefaultAction: false,
                isDestructiveAction: false,
              )
            ],
          );
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              CupertinoButton(
                  child: const Text('Remove The Expenses Below'),
                  onPressed: _isShown == true ? () => _delete(context) : null),
              const SizedBox(
                height: 30,
              ),
              if (_isShown == true)
                const Padding(
                  padding: EdgeInsets.all(30),
                  child: Text(
                      'Text here',
                      style: TextStyle(
                        fontSize: 15
                      ),
                      ),
                )
            ],
          ),
        ));
  }
}