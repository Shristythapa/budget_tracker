import 'package:flutter/material.dart';

Future<String?> DeleteBox(BuildContext context) {

    return showDialog<String>(
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
      );
  }