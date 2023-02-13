import 'package:budget_tracer_practice/model/income_model.dart';
import 'package:budget_tracer_practice/repositories/income_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class IncomeViewModel with ChangeNotifier {
  IncomRepository _incomRepository = IncomRepository();
  List<IncomeModel> _incomes = [];
  List<IncomeModel> get incomes => _incomes;

  Future<void> getIncomes() async {
    _incomes = [];
    notifyListeners();
    try {
      var response = await _incomRepository.getAllIncomes();
      for (var element in response) {
        print(element.id);
        _incomes.add(element.data());
      }
      notifyListeners();
    } catch (e) {
      print(e);
      _incomes = [];
      notifyListeners();
    }
  }

  Future<void> addIncome(IncomeModel income) async {
    try {
      var response = await _incomRepository.addIncomes(income: income);
    } catch (e) {
      notifyListeners();
    }
  }
}
