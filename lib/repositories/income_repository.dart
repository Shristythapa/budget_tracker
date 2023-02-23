import 'package:budget_tracer_practice/model/income_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../services/firebase_service.dart';

class IncomRepository {
  CollectionReference<IncomeModel> incomeRef =
  FirebaseService.db.collection("incomes").withConverter<IncomeModel>(
    fromFirestore: (snapshot, _) {
      return IncomeModel.fromFirebaseSnapshot(snapshot);
    },
    toFirestore: (model, _) => model.toJson(),
  );

  Future<List<QueryDocumentSnapshot<IncomeModel>>> getAllIncomes() async {
    try {
      final response = await incomeRef.get();
      var incomes = response.docs;
      return incomes;
    } catch (err) {
      print(err);
      rethrow;
    }
  }

  Future<List<QueryDocumentSnapshot<IncomeModel>>> getIncomeByCategory(
      String id) async {
    try {
      final response =
      await incomeRef.where("category_id", isEqualTo: id.toString()).get();
      var incomes = response.docs;
      return incomes;
    } catch (err) {
      print(err);
      rethrow;
    }
  }

  Future<List<QueryDocumentSnapshot<IncomeModel>>> getIncomeByAccount(
      String id) async {
    print("incomeRepo");
    print("IamuserId $id");
    try {
      final response =
      await incomeRef.where("userId", isEqualTo: id).get();
      var incomes = response.docs;
      print("this is my incomes $incomes");
      return incomes;
    } catch (err) {
      print("incomeError $err");
      print(err);
      rethrow;
    }
  }

  Future<List<QueryDocumentSnapshot<IncomeModel>>> getIncomeFromList(
      List<String> incomeIds) async {
    try {
      final response =
      await incomeRef.where(FieldPath.documentId, whereIn: incomeIds).get();
      var incomes = response.docs;
      return incomes;
    } catch (err) {
      print(err);
      rethrow;
    }
  }

  Future<List<QueryDocumentSnapshot<IncomeModel>>> getMyIncomes(
      String? userId) async {
    try {
      print("incomeRepoReached");
      final response =
      await incomeRef.where("user_id", isEqualTo: userId).get();
      var incomes = response.docs;
      return incomes;
    } catch (err) {
      print(err);
      rethrow;
    }
  }

  Future<bool> removeIncome(String incomeId, String userId) async {
    try {
      final response = await incomeRef.doc(incomeId).get();
      if (response.data()!.userId != userId) {
        return false;
      }
      await incomeRef.doc(incomeId).delete();
      return true;
    } catch (err) {
      print(err);
      rethrow;
    }
  }

  Future<DocumentSnapshot<IncomeModel>> getOneIncome(String id) async {
    try {
      final response = await incomeRef.doc(id).get();
      if (!response.exists) {
        throw Exception("Income doesnot exists");
      }
      return response;
    } catch (err) {
      print(err);
      rethrow;
    }
  }

  Future<bool?> addIncomes({required IncomeModel income}) async {
    Map<String, dynamic> jsonAccount = income.toJson();
    try {
      var docref = incomeRef.doc();
      income.id=docref.id;
      await docref.set(income);
      return true;
    } catch (err) {
      rethrow;
    }
  }

  Future<bool?> editIncome(
      {required IncomeModel income, required String incomeId}) async {
    try {
      final response = await incomeRef.doc(incomeId).set(income);
      return true;
    } catch (err) {
      return false;
    }
  }

// Future<bool?> favorites({required  product}) async {
//   try {
//     final response = await productRef.add(product);
//     return true;
//   } catch (err) {
//     return false;
//     rethrow;
//   }
// }
}