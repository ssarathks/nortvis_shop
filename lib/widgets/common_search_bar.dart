import 'package:flutter/material.dart';
import 'package:nortvis_task/constants/theme_constants.dart';

class CommonSearchBar extends StatelessWidget {
  const CommonSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: ThemeConstants.scaffoldHorizontalPadding),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Row(
          children: [
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search furniture',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(8.0),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Add your search button logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}
