import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:nortvis_task/constants/common_exception.dart';
import 'package:nortvis_task/constants/network_constants.dart';
import 'package:nortvis_task/models/category_dish.dart';
import 'package:nortvis_task/models/food_category.dart';

class FoodProvider with ChangeNotifier {
  List<FoodCategory> _foodCategories = [];
  List<FoodCategory> get foodCategories => [..._foodCategories];

  final dio = Dio();
  Future<void> fetchRecipes() async {
    try {
      Response response = await dio.get(ApiEndpoints.FOOD);
      var restaurantData = response.data[0];
      var categoryList = restaurantData['table_menu_list'];
      List<FoodCategory> foodCategories = [];
      foodCategories = categoryList
          .map<FoodCategory>((category) => FoodCategory.fromJson(category))
          .toList();
      _foodCategories = foodCategories;
      notifyListeners();
      print(response);
    } catch (e) {
      throw CommonException(message: "Error fetching food");
    }
  }

  List<CategoryDishes> getFoodByCategoryId(String categoryId) {
    FoodCategory category =
        _foodCategories.firstWhere((cat) => cat.menuCategoryId == categoryId);
    return category.categoryDishes ?? [];
  }

  void changeFoodQuantityByCategoryIdDishId(
      String categoryId, String dishId, int qty) {
    FoodCategory category =
        _foodCategories.firstWhere((cat) => cat.menuCategoryId == categoryId);
    CategoryDishes? dish =
        category.categoryDishes?.firstWhere((d) => d.dishId == dishId);
    if (dish != null) {
      dish.quantityOrdered = qty;
      notifyListeners();
    }
  }
}
