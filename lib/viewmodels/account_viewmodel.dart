import 'package:budget_tracer_practice/model/account_model.dart';
import 'package:budget_tracer_practice/repositories/account_repositories.dart';
import 'package:flutter/material.dart';

class AccViewModel with ChangeNotifier {

  Future<void> addAccount(Account account) async {
    try {
      await AccountRepo().createAccount(account);
      notifyListeners();
    } catch (err) {
      rethrow;
    }
  }
}