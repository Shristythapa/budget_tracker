import 'package:budget_tracer_practice/accounts/addAccount.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  testWidgets("add a account", (WidgetTester tester) async{
    final accountName = find.byKey(ValueKey("accountName"));
    final accountAmount = find.byKey(ValueKey("accountAmount"));
    final addButton = find.byKey(ValueKey("addButton"));

        await tester.pumpWidget(MaterialApp(home: AddMyAccount()));
        await tester.enterText(accountName, "My Account");
        await tester.enterText(accountAmount, "123");
        await tester.tap(addButton);
        await tester.pump();

        expect(find.text("Add account"), findsOneWidget);
  });
}

