import 'package:budget_tracer_practice/model/expenses_category_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../services/firebase_service.dart';

class CategoryRepository {
  CollectionReference<CategoryModel1> categoryRef =
  FirebaseService.db.collection("categoriesexpenses").withConverter<CategoryModel1>(
    fromFirestore: (snapshot, _) {
      return CategoryModel1.fromFirebaseSnapshot(snapshot);
    },
    toFirestore: (model, _) => model.toJson(),
  );
  Future<List<QueryDocumentSnapshot<CategoryModel1>>> getCategories() async {
    try {
      var data = await categoryRef.get();
      bool hasData = data.docs.isNotEmpty;
      if (!hasData) {
        makeCategory().forEach((element) async {
          await categoryRef.add(element);
        });
      }
      final response = await categoryRef.get();
      var category = response.docs;
      return category;
    } catch (err) {
      print(err);
      rethrow;
    }
  }

  Future<DocumentSnapshot<CategoryModel1>> getCategory(String categoryId) async {
    try {
      print(categoryId);
      final response = await categoryRef.doc(categoryId).get();
      return response;
    } catch (e) {
      rethrow;
    }
  }

  List<CategoryModel1> makeCategory() {
    return [
      CategoryModel1(categoryName: "School Fees"),
      CategoryModel1(categoryName: "Fuel"),
      CategoryModel1(categoryName: "Goseries"),
      CategoryModel1(categoryName: "Clothings"),
      CategoryModel1(categoryName: "Medicines"),
      CategoryModel1(categoryName: "Gift'"),
      CategoryModel1(categoryName: "Stationary"),
      CategoryModel1(categoryName: "House Rent"),
      CategoryModel1(categoryName: "Travel"),
    ];
  }
}