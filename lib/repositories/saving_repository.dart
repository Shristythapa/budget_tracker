import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/saving_model.dart';
import '../services/firebase_service.dart';

class SavingRepository {
  CollectionReference<SavingModel> savingRef =
      FirebaseService.db.collection("savings").withConverter<SavingModel>(
            fromFirestore: (snapshot, _) {
              return SavingModel.fromFireBaseSnapshot(snapshot);
            },
            toFirestore: (model, _) => model.toJson(),
          );
  Future<bool?> addSavings({ required SavingModel saving}) async {
    try {
      final response = await savingRef.add(saving);
      return true;
    } catch (err) {
      return false;
      rethrow;
    }
  }

  Future<List<QueryDocumentSnapshot<SavingModel>>> getAllSavings() async {
    try {
      final response = await savingRef.get();
      var savings = response.docs;
      return savings;
    } catch (err) {
      print(err);
      rethrow;
    }
  }

  // Future<DocumentSnapshot<SavingModel>> getOneSaving(String id) async {
  //   try {
  //     final response = await savingRef.doc(id).get();
  //     if (!response.exists) {
  //       throw Exception("Accont doesnot exists");
  //     }
  //     return response;
  //   } catch (err) {
  //     print(err);
  //     rethrow;
  //   }
  // }

}
