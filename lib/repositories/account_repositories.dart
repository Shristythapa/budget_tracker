import 'package:budget_tracer_practice/model/account_model.dart';
import 'package:budget_tracer_practice/services/firebase_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class AccountRepo {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  CollectionReference<Account> accref =
      FirebaseService.db.collection("account").withConverter<Account>(
            fromFirestore: (snapshot, _) {
              return Account.fromFirebaseSnapshot(snapshot);
            },
            toFirestore: (model, _) => model.toJson(),
          );

  Future<void> createAccount({required Account account}) async {
    Map<String, dynamic> jsonAccount = account.toJson();

    try {
      var docref = accref.doc();
      account.accountId=docref.id;
      await docref.set(account);
    } catch (err) {
      rethrow;
    }
  }
  Future<List<QueryDocumentSnapshot<Account>>> getAccounts(String user_id) async{
    try{
       final response = await accref.where("user_id", isEqualTo: user_id).get();
       var account = response.docs;
       return account;
    }catch(err){
      rethrow;
    }
  }
}
