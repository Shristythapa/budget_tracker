
import 'package:budget_tracer_practice/model/saving_model.dart';
import 'package:budget_tracer_practice/repositories/saving_repository.dart';
import 'package:budget_tracer_practice/services/firebase_service.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  FirebaseService.db = FakeFirebaseFirestore();

  final SavingRepository savingRepository = SavingRepository();

  test("create a saving", () async {
    var response = await savingRepository.addSavings(
        saving: SavingModel(
            id: "id", accountname: "test account name", amount: "test"));
  });
}
