import 'package:flutter/material.dart';
import 'package:nortvis_task/models/product.dart';
import 'package:nortvis_task/widgets/new_badge.dart';

class ProductListTile extends StatelessWidget {
  final Product product;

  const ProductListTile({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        border: Border.all(
            width: 0.07,
            color: (Theme.of(context).textTheme.bodySmall?.color)!),
        borderRadius: BorderRadius.circular(10),
      ),
      width: 250,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    product.title,
                    maxLines: 2,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontSize: 20),
                  ),
                ),
                if (product.isNew)
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: const NewBadge(),
                  )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              '\$${product.amount}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Expanded(
                child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            )),
          ],
        ),
      ),
    );
  }
}
