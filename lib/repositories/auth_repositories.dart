import 'dart:async';

import 'package:budget_tracer_practice/model/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../services/firebase_service.dart';

class AuthRepository{
  CollectionReference<UserModel> userRef = FirebaseService.db.collection("users")
      .withConverter<UserModel>(
    fromFirestore: (snapshot, _) {
      return UserModel.fromFirebaseSnapshot(snapshot);
    },
    toFirestore: (model, _) => model.toJson(),
  );
  Future<UserCredential?> register(UserModel user) async {
    try {
      final response = await userRef
          .where("username", isEqualTo: user.username!).get();
      if (response.size != 0)
        throw Exception("Username already exists");
      UserCredential _uc = await FirebaseService.firebaseAuth
          .createUserWithEmailAndPassword(
          email: user.email!, password: user.password!);

      user.userId = _uc.user!.uid;
      await FirebaseService.db.collection('users').add(user.toJson());
      return _uc;
    } catch (err) {
      rethrow;
    }
  }


  Future<UserCredential> login(String email, String password) async {
    try {
      print(email);
      UserCredential _uc = await FirebaseService.firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      print("USER DETAIL");
      print(_uc.user?.uid);

      return _uc;
    } catch (err) {
      print("REpo err :: $err");
      rethrow;
    }
  }

  Future<UserModel> getUserDetail(String id) async {
    try {
      final response = await userRef
          .where("userId", isEqualTo: id).get();

      var user = response.docs.single.data();
      await userRef.doc(user.id).set(user);

      return user;
    } catch (err) { 
      rethrow;
    }
  }



  Future<bool> resetPassword(String email) async {
    try {
      var res = await FirebaseService.firebaseAuth
          .sendPasswordResetEmail(email: email);
      return true;
    } catch (err) {
      rethrow;
    }
  }


  Future<void> logout() async {
    try {
      await FirebaseService.firebaseAuth.signOut();
    } catch (err) {
      rethrow;
    }
  }
}