import 'package:budget_tracer_practice/model/account_model.dart';
import 'package:budget_tracer_practice/repositories/account_repositories.dart';
import 'package:flutter/material.dart';

class AccViewModel  with ChangeNotifier{

  AccountRepo _accountRepo = AccountRepo();

  List<Account> _allAccount=[];
  List<Account> get allAccount => _allAccount;

  Future<void> addAccount(Account account) async {
    try {
      await AccountRepo().createAccount(account: account);
    
    } catch (err) {
      rethrow;
    }
  }

  Future<List<Account>> getAccount() async{
    _allAccount=[];
    notifyListeners();
    try{
      var response = await _accountRepo.getAccounts();
      for(var element in response){
        _allAccount.add(element.data());
      }
      notifyListeners();
    }catch(e){
      _allAccount=[];
      notifyListeners();
    }
    return _allAccount;
  }


}