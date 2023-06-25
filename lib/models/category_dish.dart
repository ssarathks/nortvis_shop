class CategoryDishes {
  String dishId = '';
  String dishName = '';
  double dishPrice = 0;
  String dishImage = '';
  String dishCurrency = '';
  int dishCalories = 0;
  bool isVeg = false;
  String dishDescription = '';
  int quantityOrdered = 0;

  CategoryDishes({
    this.dishId = '',
    this.dishName = '',
    this.dishPrice = 0,
    this.dishImage = '',
    this.dishCurrency = '',
    this.dishCalories = 0,
    this.dishDescription = '',
    this.isVeg = false,
    this.quantityOrdered = 0,
  });

  CategoryDishes.fromJson(Map<String, dynamic> json) {
    dishId = json['dish_id'];
    dishName = json['dish_name'];
    dishPrice = json['dish_price'] as double;
    dishImage = json['dish_image'];
    dishCurrency = json['dish_currency'];
    dishCalories = (json['dish_calories'] as double).toInt();
    dishDescription = json['dish_description'];
    isVeg = json['dish_Type'] == 1 ? false : true;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dish_id'] = dishId;
    data['dish_name'] = dishName;
    data['dish_price'] = dishPrice;
    data['dish_image'] = dishImage;
    data['dish_currency'] = dishCurrency;
    data['dish_calories'] = dishCalories;
    data['dish_description'] = dishDescription;
    data['dish_Type'] = isVeg ? 2 : 1;
    return data;
  }
}
