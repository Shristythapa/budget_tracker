
import 'package:flutter/material.dart';

import '../model/account_model.dart';
import '../repositories/account_repositories.dart';

class AccViewModel  with ChangeNotifier{

  AccountRepo _accountRepo = AccountRepo();

  List<Account> _allAccount=[];
  List<Account> get allAccount => _allAccount;

  Future<void> addAccount(Account account) async {
    notifyListeners();
    try {
      await AccountRepo().createAccount(account: account);
      notifyListeners();
    } catch (err) {
      rethrow;
    }
    notifyListeners();
  }

  Future<List<Account>> getAccount(String userid) async{
    _allAccount=[];
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
  Future<void> updateAccount(Account account) async{
    try{
      await AccountRepo().editAccount(account: account, accountId: account.accountId).then((value) => AccountRepo().getAccounts(account.userId));
      notifyListeners();
    }catch(e){
      print(e);
      rethrow;
    }
  }
  Future<void> deleteAccount(Account account) async{

    try{
      print("deeee");
      await AccountRepo().removeAccount(account.accountId, account.userId).then((value) => AccountRepo().getAccounts(account.userId));
      notifyListeners();
    }catch(e){
      rethrow;
      
    }
    notifyListeners();
  }


}