import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

SavingModel savingModelFromJson(String str) =>
    SavingModel.fromJson(json.decode(str));

String savingModelToJson(SavingModel data) => json.encode(data.toJson());

class SavingModel {
  SavingModel({
    this.userId,
    this.accountname,
    this.amount,
  });

  String? userId;
  String? accountname;
  String? amount;

  factory SavingModel.fromJson(Map<String, dynamic> json) => SavingModel(
        userId: json["user_id"],
        accountname: json["accountname"],
        amount: json["amount"],
      );
  factory SavingModel.fromFireBaseSnapshot(
          DocumentSnapshot<Map<String, dynamic>> json) =>
      SavingModel(
        userId: json["user_id"],
        accountname: json["accountname"],
        amount: json["amount"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "accountname": accountname,
        "amount": amount,
      };
}
