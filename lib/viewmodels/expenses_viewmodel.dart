
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/expenses_model.dart';
import '../repositories/expenses_repository.dart';


class ExpensesViewModel with ChangeNotifier {
  ExpensesRepository _expensesRepository = ExpensesRepository();
  List<ExpensesModel> _expenses = [];
  List<ExpensesModel> get expenses => _expenses;

  Future<void> getExpenses(String uid) async {
    print("getfunctionrun");
  _expenses = [];
    //notifyListeners();
    try {
      var response = await _expensesRepository.getMyExpenses(uid);
      print(":::::$response");
      for (var element in response) {
        _expenses.add(element.data());
        print("data here ${element.data().amount}");
      }
      notifyListeners();
    } catch (e) {
    
      print("I error:: $e");
      _expenses = [];
      notifyListeners();
    }
   // return _expenses;
  }

  Future<void> addExpenses(ExpensesModel expenses) async {
    try {
      var response = await _expensesRepository.addExpenses(expenses: expenses);
    } catch (e) {
      notifyListeners();
    }
  }
  Future<void> deleteExpense(String? expenseId, String? userId) async{
    try{
      await _expensesRepository.removeExpenses(expenseId, userId).then((value) => _expensesRepository.getMyExpenses(userId));
     notifyListeners();
    }catch(e){
      rethrow;
    }
  }

}
