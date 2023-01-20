import 'package:flutter/cupertino.dart';

import '../models/saving_model.dart';
import '../repositories/saving_repository.dart';

class SavingViewModel with ChangeNotifier {
  SavingRepository _savingRepository = SavingRepository();
  List<SavingModel> _savings = [];
  List<SavingModel> get savings => _savings;
  // Future<void> getSavings() async {
  //   _savings = [];
  //   notifyListeners();
  //   try {
  //     var response = await _savingRepository.getAllSavings();
  //     for (var element in response) {
  //       print(element.id);
  //       _savings.add(element.data());
  //     }
  //   } catch (e) {
  //     print(e);
  //     _savings = [];
  //     notifyListeners();
  //   }
  // }

  Future<void> addSaving(SavingModel saving) async {
    try {
      var response = await _savingRepository.addSavings(saving: saving);
    } catch (e) {
      notifyListeners();
    }
  }
}
