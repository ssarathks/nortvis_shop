import 'package:flutter/material.dart';
import 'package:nortvis_task/models/category_dish.dart';
import 'package:nortvis_task/providers/food_provider.dart';
import 'package:nortvis_task/widgets/food_quantity_increment_button.dart';
import 'package:provider/provider.dart';

class FoodListTile extends StatefulWidget {
  final String categoryId;
  final CategoryDishes dish;
  const FoodListTile({super.key, required this.dish, required this.categoryId});

  @override
  State<FoodListTile> createState() => _FoodListTileState();
}

class _FoodListTileState extends State<FoodListTile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VegOrNonVegBadge(
          isVeg: widget.dish.isVeg,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    widget.dish.dishName,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${widget.dish.dishCurrency} ${widget.dish.dishPrice}',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${widget.dish.dishCalories} calories',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    widget.dish.dishDescription,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: FoodQuantityIncrementButton(
                    incrementQtyHandler: _incrementQtyHandler,
                    decrementQtyHandler: _decrementQtyHandler,
                    qty: widget.dish.quantityOrdered,
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
            width: 40,
            height: 40,
            child: FittedBox(
                child: Image.network(
              'https://www.eatingwell.com/thmb/m5xUzIOmhWSoXZnY-oZcO9SdArQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/article_291139_the-top-10-healthiest-foods-for-kids_-02-4b745e57928c4786a61b47d8ba920058.jpg',
              fit: BoxFit.contain,
            ))),
      ],
    );
  }

  void _incrementQtyHandler() {
    int currentQty = widget.dish.quantityOrdered;
    Provider.of<FoodProvider>(context, listen: false)
        .changeFoodQuantityByCategoryIdDishId(
            widget.categoryId, widget.dish.dishId, currentQty + 1);
  }

  void _decrementQtyHandler() {
    int currentQty = widget.dish.quantityOrdered;
    if (currentQty == 0) {
      return;
    }
    Provider.of<FoodProvider>(context, listen: false)
        .changeFoodQuantityByCategoryIdDishId(
            widget.categoryId, widget.dish.dishId, currentQty - 1);
  }
}

class VegOrNonVegBadge extends StatelessWidget {
  bool isVeg;
  VegOrNonVegBadge({super.key, this.isVeg = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        border: Border.all(color: isVeg ? Colors.green : Colors.red),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: CircleAvatar(
          backgroundColor: isVeg ? Colors.green : Colors.red,
        ),
      ),
    );
  }
}
