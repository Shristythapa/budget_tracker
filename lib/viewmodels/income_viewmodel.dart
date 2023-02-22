import 'package:budget_tracer_practice/model/income_model.dart';
import 'package:budget_tracer_practice/repositories/income_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IncomeViewModel with ChangeNotifier {
  IncomRepository _incomRepository = IncomRepository();
  List<IncomeModel> _incomes = [];
  List<IncomeModel> get incomes => _incomes;

  Future<void> getIncomes(String userid) async {
    _incomes = [];
     print("IncomeViewModelReached");
    try {
      var response = await _incomRepository.getIncomeByAccount(userid);
      for (var element in response) {
        _incomes.add(element.data());
      }
      notifyListeners();
    } catch (e) {
      print(e);
      _incomes = [];
      notifyListeners();
    }
    // return _incomes;
  }

  Future<void> addIncome(IncomeModel income) async {
    try {
      var response = await _incomRepository.addIncomes(income: income);
    } catch (e) {
      notifyListeners();
    }
  }
   Future<void> deleteMyIncome(String incomeId,String uid) async {
    try {
      await _incomRepository.removeIncome(incomeId,uid).then(((value) {
        _incomRepository.getIncomeByAccount(uid);
      }));

    
      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }
}
