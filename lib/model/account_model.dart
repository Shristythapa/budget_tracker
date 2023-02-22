// To parse this JSON data, do
//
//     final account = accountFromJson(jsonString);

import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:convert';

Account accountFromJson(String str) => Account.fromJson(json.decode(str));

String accountToJson(Account data) => json.encode(data.toJson());

class Account {
    Account({
      required this.accountId,
        required this.userId,
        required this.accountName,
        required this.balanceAmount,
    });
    String accountId;
    String userId;
    String accountName;
    int balanceAmount;

    factory Account.fromJson(Map<String, dynamic> json) => Account(
       accountId: json["accountId"],
        userId: json["user_id"],
        accountName: json["account_name"],
        balanceAmount: json["balance_amount"],
    );

    Map<String, dynamic> toJson() => {
        "accountId":accountId,
        "user_id": userId,
        "account_name": accountName,
        "balance_amount": balanceAmount,
    };
     factory Account.fromFirebaseSnapshot(DocumentSnapshot<Map<String, dynamic>> json) => Account(
    accountId: json["accountId"],
    userId: json["user_id"],
    accountName: json["account_name"],
    balanceAmount: json["balance_amount"],
  );

}
