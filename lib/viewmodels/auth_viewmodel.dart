import 'package:budget_tracer_practice/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../repositories/auth_repositories.dart';
import '../services/firebase_service.dart';

class AuthViewModel with ChangeNotifier {
  User? _user = FirebaseService.firebaseAuth.currentUser;
  
  AuthViewModel(){
    
  }

  User? get user => _user;
  
  

  UserModel? _loggedInUser;
  UserModel? get loggedInUser =>_loggedInUser;




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
}
