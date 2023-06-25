import 'package:flutter/material.dart';

class NewBadge extends StatelessWidget {
  const NewBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.amber[400], borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Text(
          "NEW",
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}
