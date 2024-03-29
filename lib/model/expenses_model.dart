// To parse this JSON data, do
//
//     final incomeModel = incomeModelFromJson(jsonString);

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

ExpensesModel expensesModelFromJson(String str) =>
    ExpensesModel.fromJson(json.decode(str));

String expensesModelToJson(ExpensesModel data) => json.encode(data.toJson());

class ExpensesModel {
  ExpensesModel({
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

  factory ExpensesModel.fromJson(Map<String, dynamic> json) => ExpensesModel(
    id: json["id"],
    userId: json["user_id"],
    title: json["title"],
    amount: json["amount"],
    date: json["date"],
    categoryId: json["category_id"],
  );

  factory ExpensesModel.fromFirebaseSnapshot(
      DocumentSnapshot<Map<String, dynamic>> json) =>
      ExpensesModel(
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