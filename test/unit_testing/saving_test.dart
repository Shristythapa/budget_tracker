import 'package:budget_tracer_practice/models/saving_model.dart';
import 'package:budget_tracer_practice/repositories/saving_repository.dart';
import 'package:budget_tracer_practice/services/firebase_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  FirebaseService.db = FakeFirebaseFirestore();

  final SavingRepository savingRepository = SavingRepository();

  // test("Create a product", () async {
  //   var response = await savingRepository.addSavings(saving: SavingModel());
  //   accountname:
  //   "Test Name";
  //   amount:
  //   "Test price";
  //   expect(response, true);
  // });
  // test("Get saving snapshot", () async {
  //   var data = await savingRepository.getAllSavings();
  //   expect(data.runtimeType, Stream<QuerySnapshot<SavingModel>>);
  // });

  test("create a saving", () async {
    var response = await savingRepository.addSavings(
        saving: SavingModel(
            id: "id", accountname: "test account name", amount: "test"));
  });
}
