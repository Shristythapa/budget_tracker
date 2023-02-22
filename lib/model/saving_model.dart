import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

SavingModel savingModelFromJson(String str) =>
    SavingModel.fromJson(json.decode(str));

String savingModelToJson(SavingModel data) => json.encode(data.toJson());

class SavingModel {
  SavingModel({
    this.id,
    this.userId,
    this.accountname,
    this.amount,
  });

  String? id;
  String? userId;
  String? accountname;
  String? amount;

  factory SavingModel.fromJson(Map<String, dynamic> json) => SavingModel(
        id: json["id"],
        userId: json["user_id"],
        accountname: json["accountname"],
        amount: json["amount"],
      );
  factory SavingModel.fromFireBaseSnapshot(
          DocumentSnapshot<Map<String, dynamic>> json) =>
      SavingModel(
        id: json.id,
        userId: json["user_id"],
        accountname: json["accountname"],
        amount: json["amount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userId": userId,
        "accountname": accountname,
        "amount": amount,
      };
}
