import 'package:budget_tracer_practice/model/income_model.dart';
import 'package:budget_tracer_practice/model/user_model.dart';
import 'package:budget_tracer_practice/repositories/income_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/expenses_model.dart';
import '../repositories/auth_repositories.dart';
import '../repositories/expenses_repository.dart';
import '../services/firebase_service.dart';

class AuthViewModel with ChangeNotifier {
  User? _user = FirebaseService.firebaseAuth.currentUser;
  
  AuthViewModel(){
    
  }

  User? get user => _user;
  UserModel? _loggedInUser;
  UserModel? get loggedInUser => _loggedInUser;




  Future<void> resetPassword(String email) async {
    try {
      await AuthRepository().resetPassword(email);
      notifyListeners();
    } catch (err) {
      rethrow;
    }
  }

  
  Future<void> login(String email, String password) async {
    try {
      var response = await AuthRepository().login(email, password);
      _user = response.user;
     
      
      _loggedInUser = await AuthRepository().getUserDetail(_user!.uid);
      print("LOGGED IN USE");
      print(_loggedInUser?.email);
      notifyListeners();
    } catch (err) {
      rethrow;
    }
  }


  Future<void> signup(UserModel user) async {
    print(user.toJson());
    try {
      var response = await AuthRepository().register(user);
      _user = response!.user;
      _loggedInUser = await AuthRepository().getUserDetail(_user!.uid);
      notifyListeners();
    } catch (err) {
   
      rethrow;
    }
  }

  Future<void> logout() async{
    try{
      await AuthRepository().logout();
      _user = null;
      notifyListeners();
    }catch(e){
      rethrow;
    }
  }

  List<IncomeModel>? _myIncome;
  List<IncomeModel>? get myIncome => _myIncome;

    Future<void> getMyIncomes() async {
    try {
      var incomeResponse =
          await IncomRepository().getMyIncomes(loggedInUser!.userId!);
      _myIncome = [];
      for (var element in incomeResponse) {
        _myIncome!.add(element.data());
      }
      notifyListeners();
    } catch (e) {
      print(e);
      _myIncome = null;
      notifyListeners();
    }
  }

    Future<void> addMyIncome(IncomeModel income) async {
    try {
      await IncomRepository().addIncomes(income: income);

      await getMyIncomes();
      notifyListeners();
    } catch (e) {}
  }

   Future<void> editMyIncome(IncomeModel income,String incomeId) async {
    try {
      await IncomRepository().editIncome(income: income, incomeId: incomeId);

      await getMyIncomes();
      notifyListeners();
    } catch (e) {}
  }

   Future<void> deleteMyIncome(String incomeId) async {
    try {
      await IncomRepository().removeIncome(incomeId, loggedInUser!.userId!);

      await getMyIncomes();
      notifyListeners();
    } catch (e) {}
  }
  List<ExpensesModel>? _myExpenses;
  List<ExpensesModel>? get myExpenses => _myExpenses;

    Future<void> getMyExpenses() async {
    try {
      var expensesResponse =
          await ExpensesRepository().getMyExpenses(loggedInUser!.userId!);
      _myExpenses = [];
      for (var element in expensesResponse) {
        _myExpenses!.add(element.data());
      }
      notifyListeners();
    } catch (e) {
      print(e);
      _myExpenses = null;
      notifyListeners();
    }
  }

    Future<void> addMyExpenses(ExpensesModel expenses) async {
    try {
      await ExpensesRepository().addExpenses(expenses: expenses);

      await getMyExpenses();
      notifyListeners();
    } catch (e) {}
  }

   Future<void> editMyExpenses(ExpensesModel expenses,String expensesId) async {
    try {
      await ExpensesRepository().editExpenses(expenses: expenses, expensesId: expensesId);

      await getMyExpenses();
      notifyListeners();
    } catch (e) {}
  }

   Future<void> deleteMyExpenses(String expensesId) async {
    try {
      await ExpensesRepository().removeExpenses(expensesId, loggedInUser!.userId!);

      await getMyExpenses();
      notifyListeners();
    } catch (e) {}
  }
}
