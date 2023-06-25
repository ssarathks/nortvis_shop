import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final double rating;
  final int numOfReviews;
  const Rating({super.key, required this.rating, required this.numOfReviews});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$rating',
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: Colors.amber.shade300),
        ),
        const RatingStar(),
        const RatingStar(),
        const RatingStar(),
        const RatingStar(),
        const RatingStar(
          isHalf: true,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          '($numOfReviews reviews)',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}

class RatingStar extends StatelessWidget {
  final bool isHalf;
  const RatingStar({super.key, this.isHalf = false});

  @override
  Widget build(BuildContext context) {
    return Icon(
      isHalf ? Icons.star_half : Icons.star,
      color: Colors.amber.shade300,
      size: Theme.of(context).textTheme.bodySmall?.fontSize,
    );
  }
}
