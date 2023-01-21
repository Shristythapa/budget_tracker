import 'package:budget_tracer_practice/model/account_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class AccountRepo {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;


  Future<void> createAccount(Account account) async {
     Map<String, dynamic> jsonAccount = account.toJson();
     
      var result = await firestore.collection("Account").add(jsonAccount);
        
  }
  }
