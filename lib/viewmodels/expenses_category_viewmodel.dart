import 'package:budget_tracer_practice/model/expenses_category_model.dart';
import 'package:budget_tracer_practice/repositories/expenses_category_repositories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CategoryViewModel with ChangeNotifier {
  CategoryRepository _categoryRepository = CategoryRepository();
  List<CategoryModel1> _categories = [];
  List<CategoryModel1> get categories => _categories;
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
