class Product {
  String title;
  String? description;
  String category;
  bool isNew;
  double rating;
  int noOfReviews;
  double amount;
  String imageUrl;

  Product(
      {required this.title,
      required this.category,
      required this.amount,
      this.description,
      required this.isNew,
      required this.noOfReviews,
      required this.rating,
      required this.imageUrl});
}
