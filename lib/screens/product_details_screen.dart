import 'package:flutter/material.dart';
import 'package:nortvis_task/constants/theme_constants.dart';
import 'package:nortvis_task/models/product.dart';
import 'package:nortvis_task/widgets/common_notification_icon.dart';
import 'package:nortvis_task/widgets/quantity_increment_button.dart';
import 'package:nortvis_task/widgets/rating.dart';
import 'package:nortvis_task/widgets/scaffold_header.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const routeName = '/details';
  final Product product;
  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_outlined),
          ),
          const CommonNotificationIcon(),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.grey.shade200,
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: ThemeConstants.scaffoldHorizontalPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontSize: 18),
                    ),
                    Rating(
                      rating: product.rating,
                      numOfReviews: product.noOfReviews,
                    ),
                    ScaffoldHeader(
                      headerText: 'Description',
                      negativeHorizontalPadding:
                          ThemeConstants.scaffoldHorizontalPadding,
                    ),
                    Text(
                      product.description ?? '',
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: ThemeConstants.scaffoldHorizontalPadding),
                child: Row(
                  children: [
                    const QuantityIncrementButton(),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Add to cart"),
                            const SizedBox(
                              width: 30,
                            ),
                            Text('\$${product.amount}')
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
