import 'dart:math';

import 'package:budget_tracer_practice/model/account_model.dart';
import 'package:budget_tracer_practice/repositories/account_repositories.dart';
import 'package:budget_tracer_practice/services/firebase_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
void main() async{
  FirebaseService.db = FakeFirebaseFirestore();
  final AccountRepo accountRepo = AccountRepo();

  test("create a account",() async{
     var response = await accountRepo.createAccount(
      account: Account(
           accountId: "id",
           userId: "userId",
           accountName: "name",
           balanceAmount: 12
      ));
  });

  test("get account snapshot",()async{
   var data = accountRepo.getAccounts("id");
   expect(data.runtimeType,Future<List<QueryDocumentSnapshot<Account>>>);
});

}

