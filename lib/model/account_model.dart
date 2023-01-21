// To parse this JSON data, do
//
//     final account = accountFromJson(jsonString);

import 'package:budget_tracer_practice/model/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'dart:convert';

Account accountFromJson(String str) => Account.fromJson(json.decode(str));

String accountToJson(Account data) => json.encode(data.toJson());

class Account {
    Account({
        required this.userId,
        required this.accountName,
        required this.balanceAmount,
    });

    String userId;
    String accountName;
    int balanceAmount;

    factory Account.fromJson(Map<String, dynamic> json) => Account(
        userId: json["user_id"],
        accountName: json["account_name"],
        balanceAmount: json["balance_amount"],
    );

    Map<String, dynamic> toJson() => {
        "user_id": userId,
        "account_name": accountName,
        "balance_amount": balanceAmount,
    };
     factory Account.fromFirebaseSnapshot(DocumentSnapshot<Map<String, dynamic>> json) => Account(
    userId: json.id,
    accountName: json["accountName"],
    balanceAmount: json["balanceAmount"],
 
  );
}
