import 'package:flutter/material.dart';
import 'package:nortvis_task/constants/dummy_data/recently_viewed_products.dart';
import 'package:nortvis_task/constants/dummy_data/recommended_products.dart';
import 'package:nortvis_task/models/product.dart';
import 'package:nortvis_task/screens/product_details_screen.dart';
import 'package:nortvis_task/widgets/common_app_drawer.dart';
import 'package:nortvis_task/widgets/common_notification_icon.dart';
import 'package:nortvis_task/widgets/common_search_bar.dart';
import 'package:nortvis_task/widgets/product_list_tile.dart';
import 'package:nortvis_task/widgets/recent_view_list_tile.dart';
import 'package:nortvis_task/widgets/scaffold_header.dart';

class ProductsListScreen extends StatelessWidget {
  const ProductsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: const [CommonNotificationIcon()],
      ),
      drawer: const CommonAppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: const CommonSearchBar(),
            ),
            const ScaffoldHeader(
              headerText: 'Recommended',
            ),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (((context, index) => InkWell(
                      onTap: () => _navigateToDetailsHandler(
                          context, recommendedProducts[index]),
                      child: ProductListTile(
                        product: recommendedProducts[index],
                      ),
                    ))),
                itemCount: recommendedProducts.length,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const ScaffoldHeader(
              headerText: 'Recently Viewed',
            ),
            ...recentlyViewedProducts.map((product) => InkWell(
                  onTap: () => _navigateToDetailsHandler(context, product),
                  child: RecentViewListTile(
                    product: product,
                  ),
                ))
          ],
        ),
      ),
    );
  }

  void _navigateToDetailsHandler(BuildContext context, Product product) {
    Navigator.of(context)
        .pushNamed(ProductDetailsScreen.routeName, arguments: product);
  }
}
