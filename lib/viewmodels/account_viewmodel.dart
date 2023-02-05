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

  Future<List<Account>> getAccount(String userid) async{
    print(userid);
    notifyListeners();
    try{
      var response = await _accountRepo.getAccounts(userid);
      for(var element in response){
        _allAccount.add(element.data());
        print(element.data().accountId);
      }
      notifyListeners();
    }catch(e){
      print("VM ERROR :: $e");
      _allAccount=[];
      notifyListeners();
    }
    return _allAccount;
  }


}