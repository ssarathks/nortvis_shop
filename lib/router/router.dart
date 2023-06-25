import 'package:flutter/material.dart';
import 'package:nortvis_task/models/product.dart';
import 'package:nortvis_task/screens/product_details_screen.dart';

class Router {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ProductDetailsScreen.routeName:
        Product argProduct = settings.arguments as Product;
        return MaterialPageRoute(
          builder: (_) => ProductDetailsScreen(
            product: argProduct,
          ),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(child: Text("404 Not found")),
                ));
    }
  }
}
