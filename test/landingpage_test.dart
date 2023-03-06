import 'package:budget_tracer_practice/landingpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
 group("JoinNow", (){
   testWidgets("JoinNow", (WidgetTester tester) async {

    await tester.pumpWidget(MaterialApp(
        home: MyLandingPage()));
  expect(find.text("Join Now"), findsOneWidget);
  await tester.tap(find.text('Join Now'));
    await tester.pumpAndSettle();
    expect(find.widgetWithText(Text, "Hello there"), findsOneWidget);
  });
 });
}
