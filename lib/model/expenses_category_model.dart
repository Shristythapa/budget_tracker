

import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';

CategoryModel1? categoryModelFromJson(String str) =>
    CategoryModel1.fromJson(json.decode(str));

String categoryModelToJson(CategoryModel1? data) => json.encode(data!.toJson());

class CategoryModel1 {
  CategoryModel1({
    this.id,
    this.categoryName,
  });

  String? id;
  String? categoryName;

  factory CategoryModel1.fromJson(Map<String, dynamic> json) => CategoryModel1(
    id: json["id"],
    categoryName: json["categoryName"],
  );

  factory CategoryModel1.fromFirebaseSnapshot(
      DocumentSnapshot<Map<String, dynamic>> json) =>
      CategoryModel1(
        id: json.id,
        categoryName: json["categoryName"],
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "categoryName": categoryName,
  };
}
