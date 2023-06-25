import 'package:flutter/material.dart';
import 'package:nortvis_task/constants/theme_constants.dart';

class ScaffoldHeader extends StatelessWidget {
  final String headerText;
  final double negativeHorizontalPadding;
  const ScaffoldHeader(
      {super.key,
      required this.headerText,
      this.negativeHorizontalPadding = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ThemeConstants.scaffoldHorizontalPadding -
              negativeHorizontalPadding,
        ),
        child: Text(
          headerText,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}
