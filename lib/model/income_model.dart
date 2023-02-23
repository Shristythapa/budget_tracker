import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

IncomeModel incomeModelFromJson(String str) =>
    IncomeModel.fromJson(json.decode(str));

String incomeModelToJson(IncomeModel data) => json.encode(data.toJson());

class IncomeModel {
  IncomeModel({
    this.id,
    this.userId,
    this.title,
    this.amount,
    this.date,
    this.categoryId,
  });

  String? id;
  String? userId;
  String? title;
  String? amount;
  String? date;
  String? categoryId;

  factory IncomeModel.fromJson(Map<String, dynamic> json) => IncomeModel(
    id: json["id"],
    userId: json["userId"],
    title: json["title"],
    amount: json["amount"],
    date: json["date"],
    categoryId: json["categoryId"],
  );

  factory IncomeModel.fromFirebaseSnapshot(
      DocumentSnapshot<Map<String, dynamic>> json) =>
      IncomeModel(
        id: json["id"],
        userId: json["userId"],
        title: json["title"],
        amount: json["amount"],
        date: json["date"],
        categoryId: json["categoryId"],
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "userId": userId,
    "title": title,
    "amount": amount,
    "date": date,
    "categoryId": categoryId,
  };
}