import 'package:flutter/material.dart';
import 'package:nortvis_task/models/product.dart';

class RecentViewListTile extends StatelessWidget {
  final Product product;

  const RecentViewListTile({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(product.imageUrl),
        radius: 25,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 4),
          Text(
            product.category,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
      trailing: Text(
        '\$${product.amount}',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
