
import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/expenses_model.dart';
import '../services/firebase_service.dart';

class ExpensesRepository {
  CollectionReference<ExpensesModel> expensesRef =
  FirebaseService.db.collection("expenses").withConverter<ExpensesModel>(
    fromFirestore: (snapshot, _) {
      return ExpensesModel.fromFirebaseSnapshot(snapshot);
    },
    toFirestore: (model, _) => model.toJson(),
  );

  Future<List<QueryDocumentSnapshot<ExpensesModel>>> getAllExpenses() async {
    
    try {
      final response = await expensesRef.get();
      var incomes = response.docs;
      print("expenseHere $response");
      return incomes;
    } catch (err) {
    
      print("expenseErrorOcured $err");
      rethrow;
    }
  }

  Future<List<QueryDocumentSnapshot<ExpensesModel>>> getExpensesByCategory(
      String id) async {
    try {
      final response =
      await expensesRef.where("category_id", isEqualTo: id.toString()).get();
      var expenses = response.docs;
      return expenses;
    } catch (err) {
      print(err);
      rethrow;
    }
  }
  Future<List<QueryDocumentSnapshot<ExpensesModel>>> getExpensesByAccount(
      String id) async {
    try {
      final response =
      await expensesRef.where("account_id", isEqualTo: id.toString()).get();
      var expenses = response.docs;
      return expenses;
    } catch (err) {
      print(err);
      rethrow;
    }
  }

  Future<List<QueryDocumentSnapshot<ExpensesModel>>> getExpensesFromList(
      List<String> expensesIds) async {
    try {
      final response = await expensesRef
          .where(FieldPath.documentId, whereIn: expensesIds)
          .get();
      var expenses = response.docs;
      return expenses;
    } catch (err) {
      print(err);
      rethrow;
    }
  }

  Future<List<QueryDocumentSnapshot<ExpensesModel>>> getMyExpenses(
      String? userId) async {
        print("I am ui d $userId");
    try {
      final response =
      await expensesRef.where("userId", isEqualTo: userId).get();
      var expenses = response.docs;
      print("get done");
      return expenses;
    } catch (err) {
      print("expensError $err");
      rethrow;
    }
  }

  Future<bool> removeExpenses(String? expensesId, String? userId) async {
    try {
      final response = await expensesRef.doc(expensesId).get();
      if (response.data()!.userId != userId) {
        return false;
      }
      print("Datadelete");
      await expensesRef.doc(expensesId).delete();
      return true;
    } catch (err) {
      print(err);
      rethrow;
    }
  }

  Future<DocumentSnapshot<ExpensesModel>> getOneExpenses(String id) async {
    try {
      final response = await expensesRef.doc(id).get();
      if (!response.exists) {
        throw Exception("Expense doesnot exists");
      }
      return response;
    } catch (err) {
      print(err);
      rethrow;
    }
  }

  Future<void> addExpenses({required ExpensesModel expenses}) async {
    Map<String, dynamic> jsonAccount = expenses.toJson();
    try {
      var docref = expensesRef.doc();
      expenses.id=docref.id;
    await docref.set(expenses);

    } catch (err) {
      rethrow;
    }
  }

  Future<bool?> editExpenses(
      {required ExpensesModel expenses, required String expensesId}) async {
    try {
      final response = await expensesRef.doc(expensesId).set(expenses);
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
