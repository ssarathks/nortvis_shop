import 'package:nortvis_task/models/category_dish.dart';

class FoodCategory {
  String menuCategory = '';
  String menuCategoryId = '';
  String menuCategoryImage = '';
  List<CategoryDishes>? categoryDishes;

  FoodCategory({
    this.menuCategory = '',
    this.menuCategoryId = '',
    this.menuCategoryImage = '',
    this.categoryDishes,
  });

  FoodCategory.fromJson(Map<String, dynamic> json) {
    menuCategory = json['menu_category'];
    menuCategoryId = json['menu_category_id'];
    menuCategoryImage = json['menu_category_image'];
    if (json['category_dishes'] != null) {
      categoryDishes = <CategoryDishes>[];
      json['category_dishes'].forEach((v) {
        categoryDishes!.add(CategoryDishes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['menu_category'] = menuCategory;
    data['menu_category_id'] = menuCategoryId;
    data['menu_category_image'] = menuCategoryImage;
    data['category_dishes'] = categoryDishes!.map((v) => v.toJson()).toList();
    return data;
  }
}
