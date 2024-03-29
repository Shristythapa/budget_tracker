import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../model/category_model.dart';
import '../repositories/category_repositories.dart';

class CategoryViewModel with ChangeNotifier {
  CategoryRepository _categoryRepository = CategoryRepository();
  List<CategoryModel> _categories = [];
  List<CategoryModel> get categories => _categories;
  Future<void> getCategories() async{
    _categories=[];
    try{
      var response = await _categoryRepository.getCategories();
      for (var element in response) {

        print(element.id);
        _categories.add(element.data());
      }
      notifyListeners();
    }catch(e){
      print(e);
      _categories = [];
      notifyListeners();
    }
  }

}
