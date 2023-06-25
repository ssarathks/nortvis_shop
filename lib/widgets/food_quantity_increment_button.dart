import 'package:flutter/material.dart';

class FoodQuantityIncrementButton extends StatelessWidget {
  final Function decrementQtyHandler;
  final Function incrementQtyHandler;
  final int qty;
  const FoodQuantityIncrementButton({
    super.key,
    required this.decrementQtyHandler,
    required this.incrementQtyHandler,
    required this.qty,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () => decrementQtyHandler(),
            child: const Padding(
              padding: EdgeInsets.all(7.0),
              child: Icon(
                Icons.remove,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              '$qty',
              style: const TextStyle(color: Colors.white),
            ),
          ),
          InkWell(
            onTap: () => incrementQtyHandler(),
            child: const Padding(
              padding: EdgeInsets.all(7.0),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
