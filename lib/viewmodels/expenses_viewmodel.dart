
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/expenses_model.dart';
import '../repositories/expenses_repository.dart';


class ExpensesViewModel with ChangeNotifier {
  ExpensesRepository _expensesRepository = ExpensesRepository();
  List<ExpensesModel> _expenses = [];
  List<ExpensesModel> get expenses => _expenses;

  Future<void> getExpenses() async {
    _expenses = [];
    notifyListeners();
    try {
      var response = await _expensesRepository.getAllExpenses();
      for (var element in response) {
        print(element.id);
        _expenses.add(element.data());
      }
      notifyListeners();
    } catch (e) {
      print(e);
      _expenses = [];
      notifyListeners();
    }
  }

  Future<void> addExpenses(ExpensesModel expenses) async {
    try {
      var response = await _expensesRepository.addExpenses(expenses: expenses);
    } catch (e) {
      notifyListeners();
    }
  }
}
